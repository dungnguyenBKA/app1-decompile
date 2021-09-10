package com.vungle.warren.model;

import android.content.ContentValues;
import com.vungle.warren.persistence.DBAdapter;
import com.vungle.warren.persistence.IdColumns;
import java.lang.reflect.Type;
import java.util.Map;

public class CookieDBAdapter implements DBAdapter<Cookie> {
    public static final String CREATE_COOKIE_TABLE_QUERY = "CREATE TABLE IF NOT EXISTS cookie(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, bools TEXT, ints TEXT, longs TEXT, strings TEXT )";
    Type boolType = new z80<Map<String, Boolean>>() {
        /* class com.vungle.warren.model.CookieDBAdapter.AnonymousClass1 */
    }.getType();
    private j60 gson = new k60().a();
    Type intType = new z80<Map<String, Integer>>() {
        /* class com.vungle.warren.model.CookieDBAdapter.AnonymousClass2 */
    }.getType();
    Type longType = new z80<Map<String, Long>>() {
        /* class com.vungle.warren.model.CookieDBAdapter.AnonymousClass3 */
    }.getType();
    Type stringType = new z80<Map<String, String>>() {
        /* class com.vungle.warren.model.CookieDBAdapter.AnonymousClass4 */
    }.getType();

    public interface CookieColumns extends IdColumns {
        public static final String COLUMN_BOOLS = "bools";
        public static final String COLUMN_INTS = "ints";
        public static final String COLUMN_LONGS = "longs";
        public static final String COLUMN_STRINGS = "strings";
        public static final String TABLE_NAME = "cookie";
    }

    @Override // com.vungle.warren.persistence.DBAdapter
    public String tableName() {
        return CookieColumns.TABLE_NAME;
    }

    @Override // com.vungle.warren.persistence.DBAdapter
    public Cookie fromContentValues(ContentValues contentValues) {
        Cookie cookie = new Cookie(contentValues.getAsString(IdColumns.COLUMN_IDENTIFIER));
        cookie.booleans = (Map) this.gson.d(contentValues.getAsString(CookieColumns.COLUMN_BOOLS), this.boolType);
        cookie.longs = (Map) this.gson.d(contentValues.getAsString(CookieColumns.COLUMN_LONGS), this.longType);
        cookie.integers = (Map) this.gson.d(contentValues.getAsString(CookieColumns.COLUMN_INTS), this.intType);
        cookie.strings = (Map) this.gson.d(contentValues.getAsString(CookieColumns.COLUMN_STRINGS), this.stringType);
        return cookie;
    }

    public ContentValues toContentValues(Cookie cookie) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(IdColumns.COLUMN_IDENTIFIER, cookie.identifier);
        contentValues.put(CookieColumns.COLUMN_BOOLS, this.gson.i(cookie.booleans, this.boolType));
        contentValues.put(CookieColumns.COLUMN_INTS, this.gson.i(cookie.integers, this.intType));
        contentValues.put(CookieColumns.COLUMN_LONGS, this.gson.i(cookie.longs, this.longType));
        contentValues.put(CookieColumns.COLUMN_STRINGS, this.gson.i(cookie.strings, this.stringType));
        return contentValues;
    }
}
