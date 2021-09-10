package com.vungle.warren.persistence;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.vungle.warren.model.AdAsset;
import com.vungle.warren.model.AdAssetDBAdapter;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.CookieDBAdapter;
import com.vungle.warren.model.Placement;
import com.vungle.warren.model.PlacementDBAdapter;
import com.vungle.warren.model.Report;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.model.VisionData;
import com.vungle.warren.model.VisionDataDBAdapter;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.utility.FileUtility;
import com.vungle.warren.vision.VisionAggregationData;
import com.vungle.warren.vision.VisionAggregationInfo;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class Repository {
    private static final String TAG = "Repository";
    protected static final int VERSION = 6;
    private Map<Class, DBAdapter> adapters;
    private final Context appCtx;
    protected DatabaseHelper dbHelper;
    private final Designer designer;
    private final ExecutorService ioExecutor;
    private final ExecutorService uiExecutor;

    public interface LoadCallback<T> {
        void onLoaded(T t);
    }

    public interface SaveCallback {
        void onError(Exception exc);

        void onSaved();
    }

    private static class VungleDatabaseCreator implements DatabaseHelper.DatabaseFactory {
        private final Context context;

        public VungleDatabaseCreator(Context context2) {
            this.context = context2;
        }

        private void deleteDatabase(String str) {
            this.context.deleteDatabase(str);
        }

        private void dropOldFilesData() {
            deleteDatabase("vungle");
            File externalFilesDir = this.context.getExternalFilesDir(null);
            if ((Environment.getExternalStorageState().equals("mounted") && externalFilesDir != null) && externalFilesDir.exists()) {
                try {
                    FileUtility.delete(new File(externalFilesDir, ".vungle"));
                } catch (IOException e) {
                    Log.e(Repository.TAG, "IOException ", e);
                }
            }
            File filesDir = this.context.getFilesDir();
            if (filesDir.exists()) {
                try {
                    FileUtility.delete(new File(filesDir, "vungle"));
                } catch (IOException e2) {
                    Log.e(Repository.TAG, "IOException ", e2);
                }
            }
            try {
                FileUtility.delete(new File(this.context.getCacheDir() + File.separator + "downloads_vungle"));
            } catch (IOException e3) {
                Log.e(Repository.TAG, "IOException ", e3);
            }
        }

        @Override // com.vungle.warren.persistence.DatabaseHelper.DatabaseFactory
        public void create(SQLiteDatabase sQLiteDatabase) {
            dropOldFilesData();
            sQLiteDatabase.execSQL(AdvertisementDBAdapter.CREATE_ADVERTISEMENT_TABLE_QUERY);
            sQLiteDatabase.execSQL(PlacementDBAdapter.CREATE_PLACEMENT_TABLE_QUERY);
            sQLiteDatabase.execSQL(CookieDBAdapter.CREATE_COOKIE_TABLE_QUERY);
            sQLiteDatabase.execSQL(ReportDBAdapter.CREATE_REPORT_TABLE_QUERY);
            sQLiteDatabase.execSQL(AdAssetDBAdapter.CREATE_ASSET_TABLE_QUERY);
            sQLiteDatabase.execSQL(VisionDataDBAdapter.CREATE_VISION_TABLE_QUERY);
        }

        @Override // com.vungle.warren.persistence.DatabaseHelper.DatabaseFactory
        public void deleteData(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS advertisement");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cookie");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS placement");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS report");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS adAsset");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS vision_data");
        }

        @Override // com.vungle.warren.persistence.DatabaseHelper.DatabaseFactory
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            ArrayList arrayList = new ArrayList();
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM sqlite_master WHERE type='table'", null);
            while (rawQuery != null && rawQuery.moveToNext()) {
                String string = rawQuery.getString(1);
                if (!string.equals("android_metadata") && !string.startsWith("sqlite_")) {
                    arrayList.add(string);
                }
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + ((String) it.next()));
            }
            create(sQLiteDatabase);
        }

        @Override // com.vungle.warren.persistence.DatabaseHelper.DatabaseFactory
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i < 2) {
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN status INTEGER DEFAULT 1");
            }
            if (i < 3) {
                sQLiteDatabase.execSQL(VisionDataDBAdapter.CREATE_VISION_TABLE_QUERY);
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN ad_size TEXT ");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN tt_download NUMERIC DEFAULT -1");
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN ad_size TEXT ");
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN refresh_duration NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN supported_template_types NUMERIC DEFAULT 0");
            }
            if (i < 4) {
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN header_bidding SHORT ");
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN header_bidding SHORT ");
            }
            if (i < 5) {
                sQLiteDatabase.execSQL("ALTER TABLE placement ADD COLUMN autocache_priority NUMERIC DEFAULT 2147483647");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN asset_download_timestamp NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN asset_download_duration NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN ad_request_start_time NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN init_timestamp NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE report ADD COLUMN asset_download_duration NUMERIC DEFAULT 0");
            }
            if (i < 6) {
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN column_enable_om_sdk NUMERIC DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE advertisement ADD COLUMN column_om_sdk_extra_vast TEXT ");
            }
        }
    }

    public Repository(Context context, Designer designer2, ExecutorService executorService, ExecutorService executorService2) {
        this(context, designer2, executorService, executorService2, 6);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void deleteAdInternal(String str) {
        if (!TextUtils.isEmpty(str)) {
            deleteAssetForAdId(str);
            deleteModel(Advertisement.class, str);
            try {
                this.designer.deleteAssets(str);
            } catch (IOException e) {
                Log.e(TAG, "IOException ", e);
            }
        }
    }

    private void deleteAssetForAdId(String str) {
        Query query = new Query(this.adapters.get(AdAsset.class).tableName());
        query.selection = "ad_identifier=?";
        query.args = new String[]{str};
        this.dbHelper.delete(query);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private <T> void deleteModel(Class<T> cls, String str) {
        Query query = new Query(this.adapters.get(cls).tableName());
        query.selection = "item_id=?";
        query.args = new String[]{str};
        this.dbHelper.delete(query);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private <T> List<T> extractModels(Class<T> cls, Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        try {
            DBAdapter dBAdapter = this.adapters.get(cls);
            while (cursor.moveToNext()) {
                ContentValues contentValues = new ContentValues();
                DatabaseUtils.cursorRowToContentValues(cursor, contentValues);
                arrayList.add(dBAdapter.fromContentValues(contentValues));
            }
            return arrayList;
        } finally {
            cursor.close();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private List<String> getAdsForPlacement(String str) {
        Query query = new Query(AdvertisementDBAdapter.AdvertisementColumns.TABLE_NAME);
        query.columns = new String[]{IdColumns.COLUMN_IDENTIFIER};
        query.selection = "placement_id=?";
        query.args = new String[]{str};
        Cursor query2 = this.dbHelper.query(query);
        ArrayList arrayList = new ArrayList();
        while (query2 != null && query2.moveToNext()) {
            arrayList.add(query2.getString(query2.getColumnIndex(IdColumns.COLUMN_IDENTIFIER)));
        }
        if (query2 != null) {
            query2.close();
        }
        return arrayList;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private List<AdAsset> loadAllAdAssetModels(String str) {
        Query query = new Query(AdAssetDBAdapter.AdAssetColumns.TABLE_NAME);
        query.selection = "ad_identifier = ? ";
        query.args = new String[]{str};
        return extractModels(AdAsset.class, this.dbHelper.query(query));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private <T> List<T> loadAllModels(Class<T> cls) {
        DBAdapter dBAdapter = this.adapters.get(cls);
        if (dBAdapter == null) {
            return Collections.EMPTY_LIST;
        }
        return extractModels(cls, this.dbHelper.query(new Query(dBAdapter.tableName())));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private <T> T loadModel(String str, Class<T> cls) {
        DBAdapter dBAdapter = this.adapters.get(cls);
        Query query = new Query(dBAdapter.tableName());
        query.selection = "item_id = ? ";
        query.args = new String[]{str};
        Cursor query2 = this.dbHelper.query(query);
        if (query2 == null) {
            return null;
        }
        try {
            if (query2.moveToNext()) {
                ContentValues contentValues = new ContentValues();
                DatabaseUtils.cursorRowToContentValues(query2, contentValues);
                return (T) dBAdapter.fromContentValues(contentValues);
            }
            query2.close();
            return null;
        } finally {
            query2.close();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private List<String> loadValidPlacementIds() {
        Query query = new Query("placement");
        query.selection = "is_valid = ?";
        query.args = new String[]{"1"};
        query.columns = new String[]{IdColumns.COLUMN_IDENTIFIER};
        Cursor query2 = this.dbHelper.query(query);
        ArrayList arrayList = new ArrayList();
        if (query2 != null) {
            while (query2.moveToNext()) {
                try {
                    arrayList.add(query2.getString(query2.getColumnIndex(IdColumns.COLUMN_IDENTIFIER)));
                } finally {
                    query2.close();
                }
            }
        }
        return arrayList;
    }

    private void runAndWait(Callable<Void> callable) {
        try {
            this.ioExecutor.submit(callable).get();
        } catch (ExecutionException e) {
            if (!(e.getCause() instanceof DatabaseHelper.DBException)) {
                Log.e(TAG, "Exception during runAndWait", e);
                return;
            }
            throw ((DatabaseHelper.DBException) e.getCause());
        } catch (InterruptedException e2) {
            Log.e(TAG, "InterruptedException ", e2);
            Thread.currentThread().interrupt();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private <T> void saveModel(T t) {
        DBAdapter dBAdapter = this.adapters.get(t.getClass());
        this.dbHelper.insertWithConflict(dBAdapter.tableName(), dBAdapter.toContentValues(t), 5);
    }

    public void clearAllData() {
        this.dbHelper.dropDb();
        this.designer.clearCache();
    }

    public <T> void delete(final T t) {
        runAndWait(new Callable<Void>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass12 */

            @Override // java.util.concurrent.Callable
            public Void call() {
                Repository.this.deleteModel(t);
                return null;
            }
        });
    }

    public void deleteAdvertisement(final String str) {
        runAndWait(new Callable<Void>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass13 */

            @Override // java.util.concurrent.Callable
            public Void call() {
                Repository.this.deleteAdInternal(str);
                return null;
            }
        });
    }

    public FutureResult<List<String>> findAdsForPlacement(final String str) {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<List<String>>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass19 */

            @Override // java.util.concurrent.Callable
            public List<String> call() {
                return Repository.this.getAdsForPlacement(str);
            }
        }));
    }

    public FutureResult<Advertisement> findValidAdvertisementForPlacement(final String str) {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<Advertisement>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass6 */

            @Override // java.util.concurrent.Callable
            public Advertisement call() {
                String str;
                String str2 = Repository.TAG;
                StringBuilder q = ic.q(" Searching for valid adv for pl ");
                q.append(str);
                Log.i(str2, q.toString());
                Query query = new Query(AdvertisementDBAdapter.AdvertisementColumns.TABLE_NAME);
                query.selection = "placement_id = ? AND (state = ? OR  state = ?) AND expire_time > ?";
                query.args = new String[]{str, String.valueOf(1), String.valueOf(0), String.valueOf(System.currentTimeMillis() / 1000)};
                query.limit = "1";
                query.orderBy = "state DESC";
                Cursor query2 = Repository.this.dbHelper.query(query);
                AdvertisementDBAdapter advertisementDBAdapter = (AdvertisementDBAdapter) Repository.this.adapters.get(Advertisement.class);
                ArrayList arrayList = new ArrayList();
                while (query2 != null && advertisementDBAdapter != null && query2.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    DatabaseUtils.cursorRowToContentValues(query2, contentValues);
                    arrayList.add(advertisementDBAdapter.fromContentValues(contentValues));
                }
                if (query2 != null) {
                    query2.close();
                }
                Advertisement advertisement = arrayList.size() > 0 ? (Advertisement) arrayList.get(0) : null;
                String str3 = Repository.TAG;
                if (advertisement == null) {
                    str = "Didn't find valid adv";
                } else {
                    StringBuilder q2 = ic.q("Found valid adv ");
                    q2.append(advertisement.getId());
                    str = q2.toString();
                }
                Log.i(str3, str);
                return advertisement;
            }
        }));
    }

    public FutureResult<File> getAdvertisementAssetDirectory(final String str) {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<File>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass15 */

            @Override // java.util.concurrent.Callable
            public File call() {
                return Repository.this.designer.getAssetDirectory(str);
            }
        }));
    }

    public FutureResult<List<String>> getAvailableBidTokens(final int i) {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<List<String>>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass17 */

            @Override // java.util.concurrent.Callable
            public List<String> call() {
                ArrayList arrayList;
                synchronized (Repository.this) {
                    Query query = new Query(AdvertisementDBAdapter.AdvertisementColumns.TABLE_NAME);
                    query.selection = "bid_token != '' AND ( state = ? OR state = ? ) AND expire_time > ?";
                    query.columns = new String[]{AdvertisementDBAdapter.AdvertisementColumns.COLUMN_BID_TOKEN};
                    query.args = new String[]{String.valueOf(0), String.valueOf(1), String.valueOf(System.currentTimeMillis() / 1000)};
                    query.limit = String.valueOf(i);
                    Cursor query2 = Repository.this.dbHelper.query(query);
                    arrayList = new ArrayList();
                    if (query2 != null) {
                        while (query2.moveToNext()) {
                            try {
                                arrayList.add(query2.getString(query2.getColumnIndex(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_BID_TOKEN)));
                            } finally {
                                query2.close();
                            }
                        }
                    }
                }
                return arrayList;
            }
        }));
    }

    public FutureResult<Collection<String>> getValidPlacementIds() {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<Collection<String>>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass16 */

            @Override // java.util.concurrent.Callable
            public Collection<String> call() {
                List loadValidPlacementIds;
                synchronized (Repository.this) {
                    loadValidPlacementIds = Repository.this.loadValidPlacementIds();
                }
                return loadValidPlacementIds;
            }
        }));
    }

    public FutureResult<List<VisionAggregationData>> getVisionAggregationData(final long j, final int i, final String str) {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<List<VisionAggregationData>>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass23 */

            @Override // java.util.concurrent.Callable
            public List<VisionAggregationData> call() {
                ArrayList arrayList = new ArrayList();
                if (!VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER.equals(str) && !"campaign".equals(str) && !VisionDataDBAdapter.VisionDataColumns.COLUMN_CREATIVE.equals(str)) {
                    return arrayList;
                }
                Query query = new Query(VisionDataDBAdapter.VisionDataColumns.TABLE_NAME);
                String str = str;
                query.columns = new String[]{"COUNT ( * ) as viewCount", "MAX ( timestamp ) as lastTimeStamp", str};
                query.selection = "timestamp >= ?";
                query.groupBy = str;
                query.orderBy = "_id DESC";
                query.limit = Integer.toString(i);
                query.args = new String[]{Long.toString(j)};
                Cursor query2 = Repository.this.dbHelper.query(query);
                if (query2 != null) {
                    while (query2.moveToNext()) {
                        try {
                            ContentValues contentValues = new ContentValues();
                            DatabaseUtils.cursorRowToContentValues(query2, contentValues);
                            arrayList.add(new VisionAggregationData(contentValues.getAsString(str), contentValues.getAsInteger("viewCount").intValue(), contentValues.getAsLong("lastTimeStamp").longValue()));
                        } finally {
                            query2.close();
                        }
                    }
                }
                return arrayList;
            }
        }));
    }

    public FutureResult<VisionAggregationInfo> getVisionAggregationInfo(final long j) {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<VisionAggregationInfo>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass22 */

            @Override // java.util.concurrent.Callable
            public VisionAggregationInfo call() {
                Query query = new Query(VisionDataDBAdapter.VisionDataColumns.TABLE_NAME);
                query.selection = "timestamp >= ?";
                query.orderBy = "_id DESC";
                query.args = new String[]{Long.toString(j)};
                Cursor query2 = Repository.this.dbHelper.query(query);
                VisionDataDBAdapter visionDataDBAdapter = (VisionDataDBAdapter) Repository.this.adapters.get(VisionData.class);
                if (query2 == null || visionDataDBAdapter == null) {
                    return null;
                }
                try {
                    if (query2.moveToFirst()) {
                        ContentValues contentValues = new ContentValues();
                        DatabaseUtils.cursorRowToContentValues(query2, contentValues);
                        return new VisionAggregationInfo(query2.getCount(), visionDataDBAdapter.fromContentValues(contentValues).creative);
                    }
                    query2.close();
                    return null;
                } finally {
                    query2.close();
                }
            }
        }));
    }

    public void init() {
        runAndWait(new Callable<Void>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass1 */

            @Override // java.util.concurrent.Callable
            public Void call() {
                Repository.this.dbHelper.init();
                ContentValues contentValues = new ContentValues();
                contentValues.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE, (Integer) 3);
                Query query = new Query(AdvertisementDBAdapter.AdvertisementColumns.TABLE_NAME);
                query.selection = "state=?";
                query.args = new String[]{String.valueOf(2)};
                Repository.this.dbHelper.update(query, contentValues);
                return null;
            }
        });
    }

    public <T> FutureResult<T> load(final String str, final Class<T> cls) {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<T>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass2 */

            @Override // java.util.concurrent.Callable
            public T call() {
                return (T) Repository.this.loadModel(str, cls);
            }
        }));
    }

    public <T> FutureResult<List<T>> loadAll(final Class<T> cls) {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<List<T>>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass7 */

            @Override // java.util.concurrent.Callable
            public List<T> call() {
                return Repository.this.loadAllModels(cls);
            }
        }));
    }

    public FutureResult<List<AdAsset>> loadAllAdAssets(final String str) {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<List<AdAsset>>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass11 */

            @Override // java.util.concurrent.Callable
            public List<AdAsset> call() {
                return Repository.this.loadAllAdAssetModels(str);
            }
        }));
    }

    public FutureResult<List<Report>> loadAllReportToSend() {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<List<Report>>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass8 */

            @Override // java.util.concurrent.Callable
            public List<Report> call() {
                List<Report> loadAllModels = Repository.this.loadAllModels(Report.class);
                for (Report report : loadAllModels) {
                    report.setStatus(2);
                    try {
                        Repository.this.saveModel(report);
                    } catch (DatabaseHelper.DBException unused) {
                        return null;
                    }
                }
                return loadAllModels;
            }
        }));
    }

    public FutureResult<List<Report>> loadReadyOrFailedReportToSend() {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<List<Report>>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass9 */

            @Override // java.util.concurrent.Callable
            public List<Report> call() {
                Query query = new Query(ReportDBAdapter.ReportColumns.TABLE_NAME);
                query.selection = "status = ?  OR status = ? ";
                query.args = new String[]{String.valueOf(1), String.valueOf(3)};
                List<Report> extractModels = Repository.this.extractModels(Report.class, Repository.this.dbHelper.query(query));
                for (Report report : extractModels) {
                    report.setStatus(2);
                    try {
                        Repository.this.saveModel(report);
                    } catch (DatabaseHelper.DBException unused) {
                        return null;
                    }
                }
                return extractModels;
            }
        }));
    }

    public FutureResult<Collection<Placement>> loadValidPlacements() {
        return new FutureResult<>(this.ioExecutor.submit(new Callable<Collection<Placement>>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass14 */

            /* Return type fixed from 'java.util.List<com.vungle.warren.model.Placement>' to match base method */
            @Override // java.util.concurrent.Callable
            public Collection<Placement> call() {
                List<Placement> extractModels;
                synchronized (Repository.this) {
                    Query query = new Query("placement");
                    query.selection = "is_valid = ?";
                    query.args = new String[]{"1"};
                    extractModels = Repository.this.extractModels(Placement.class, Repository.this.dbHelper.query(query));
                }
                return extractModels;
            }
        }));
    }

    public <T> void save(final T t) {
        runAndWait(new Callable<Void>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass4 */

            @Override // java.util.concurrent.Callable
            public Void call() {
                Repository.this.saveModel(t);
                return null;
            }
        });
    }

    public void saveAndApplyState(final Advertisement advertisement, final String str, @Advertisement.State final int i) {
        runAndWait(new Callable<Void>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass20 */

            @Override // java.util.concurrent.Callable
            public Void call() {
                String str = Repository.TAG;
                StringBuilder q = ic.q("Setting ");
                q.append(i);
                q.append(" for adv ");
                q.append(advertisement.getId());
                q.append(" and pl ");
                q.append(str);
                Log.i(str, q.toString());
                advertisement.setState(i);
                int i = i;
                if (i == 0 || i == 1) {
                    advertisement.setPlacementId(str);
                    Repository.this.saveModel(advertisement);
                } else if (i == 2) {
                    advertisement.setPlacementId(null);
                    Repository.this.saveModel(advertisement);
                } else if (i == 3 || i == 4) {
                    Repository.this.deleteAdInternal(advertisement.getId());
                }
                return null;
            }
        });
    }

    public void setMockDBHelper(DatabaseHelper databaseHelper) {
        this.dbHelper = databaseHelper;
    }

    public void setValidPlacements(final List<Placement> list) {
        runAndWait(new Callable<Void>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass18 */

            @Override // java.util.concurrent.Callable
            public Void call() {
                synchronized (Repository.class) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(PlacementDBAdapter.PlacementColumns.COLUMN_IS_VALID, Boolean.FALSE);
                    Repository.this.dbHelper.update(new Query("placement"), contentValues);
                    for (Placement placement : list) {
                        Placement placement2 = (Placement) Repository.this.loadModel(placement.getId(), Placement.class);
                        if (!(placement2 == null || (placement2.isIncentivized() == placement.isIncentivized() && placement2.isHeaderBidding() == placement.isHeaderBidding()))) {
                            String str = Repository.TAG;
                            Log.w(str, "Placements data for " + placement.getId() + " is different from disc, deleting old");
                            for (String str2 : Repository.this.getAdsForPlacement(placement.getId())) {
                                Repository.this.deleteAdInternal(str2);
                            }
                            Repository.this.deleteModel(Placement.class, placement2.getId());
                        }
                        if (placement2 != null) {
                            placement.setWakeupTime(placement2.getWakeupTime());
                            placement.setAdSize(placement2.getAdSize());
                        }
                        placement.setValid(placement.getPlacementAdType() != 2);
                        Repository.this.saveModel(placement);
                    }
                }
                return null;
            }
        });
    }

    public void trimVisionData(final int i) {
        runAndWait(new Callable<Void>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass21 */

            @Override // java.util.concurrent.Callable
            public Void call() {
                Query query = new Query(VisionDataDBAdapter.VisionDataColumns.TABLE_NAME);
                query.selection = "_id <= ( SELECT MAX( _id ) FROM vision_data ) - ?";
                query.args = new String[]{Integer.toString(i)};
                Repository.this.dbHelper.delete(query);
                return null;
            }
        });
    }

    public void updateAndSaveReportState(final String str, final String str2, final int i, final int i2) {
        runAndWait(new Callable<Void>() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass10 */

            @Override // java.util.concurrent.Callable
            public Void call() {
                ContentValues contentValues = new ContentValues();
                contentValues.put(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS, Integer.valueOf(i2));
                Query query = new Query(ReportDBAdapter.ReportColumns.TABLE_NAME);
                query.selection = "placementId = ?  AND status = ?  AND appId = ? ";
                query.args = new String[]{str, String.valueOf(i), str2};
                Repository.this.dbHelper.update(query, contentValues);
                return null;
            }
        });
    }

    public Repository(Context context, Designer designer2, ExecutorService executorService, ExecutorService executorService2, int i) {
        this.adapters = new HashMap();
        Context applicationContext = context.getApplicationContext();
        this.appCtx = applicationContext;
        this.ioExecutor = executorService;
        this.uiExecutor = executorService2;
        this.dbHelper = new DatabaseHelper(context, i, new VungleDatabaseCreator(applicationContext));
        this.designer = designer2;
        this.adapters.put(Placement.class, new PlacementDBAdapter());
        this.adapters.put(Cookie.class, new CookieDBAdapter());
        this.adapters.put(Report.class, new ReportDBAdapter());
        this.adapters.put(Advertisement.class, new AdvertisementDBAdapter());
        this.adapters.put(AdAsset.class, new AdAssetDBAdapter());
        this.adapters.put(VisionData.class, new VisionDataDBAdapter());
    }

    public <T> void load(final String str, final Class<T> cls, final LoadCallback<T> loadCallback) {
        this.ioExecutor.execute(new Runnable() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass3 */

            public void run() {
                final Object loadModel = Repository.this.loadModel(str, cls);
                Repository.this.uiExecutor.execute(new Runnable() {
                    /* class com.vungle.warren.persistence.Repository.AnonymousClass3.AnonymousClass1 */

                    public void run() {
                        loadCallback.onLoaded(loadModel);
                    }
                });
            }
        });
    }

    public <T> void save(final T t, final SaveCallback saveCallback, boolean z) {
        Future<?> submit = this.ioExecutor.submit(new Runnable() {
            /* class com.vungle.warren.persistence.Repository.AnonymousClass5 */

            public void run() {
                try {
                    Repository.this.saveModel(t);
                    if (saveCallback != null) {
                        Repository.this.uiExecutor.execute(new Runnable() {
                            /* class com.vungle.warren.persistence.Repository.AnonymousClass5.AnonymousClass2 */

                            public void run() {
                                saveCallback.onSaved();
                            }
                        });
                    }
                } catch (DatabaseHelper.DBException e) {
                    if (saveCallback != null) {
                        Repository.this.uiExecutor.execute(new Runnable() {
                            /* class com.vungle.warren.persistence.Repository.AnonymousClass5.AnonymousClass1 */

                            public void run() {
                                saveCallback.onError(e);
                            }
                        });
                    }
                }
            }
        });
        if (z) {
            try {
                submit.get();
            } catch (InterruptedException e) {
                Log.e(TAG, "InterruptedException ", e);
                Thread.currentThread().interrupt();
            } catch (ExecutionException e2) {
                Log.e(TAG, "Error on execution during saving", e2);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private <T> void deleteModel(T t) {
        deleteModel(t.getClass(), this.adapters.get(t.getClass()).toContentValues(t).getAsString(IdColumns.COLUMN_IDENTIFIER));
    }

    public <T> void save(T t, SaveCallback saveCallback) {
        save(t, saveCallback, true);
    }
}
