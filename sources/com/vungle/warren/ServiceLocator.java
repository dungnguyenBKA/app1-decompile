package com.vungle.warren;

import android.annotation.SuppressLint;
import android.content.Context;
import com.vungle.warren.analytics.VungleAnalytics;
import com.vungle.warren.downloader.AssetDownloader;
import com.vungle.warren.downloader.CleverCache;
import com.vungle.warren.downloader.Downloader;
import com.vungle.warren.downloader.DownloaderCache;
import com.vungle.warren.downloader.LRUCachePolicy;
import com.vungle.warren.log.LogManager;
import com.vungle.warren.omsdk.OMInjector;
import com.vungle.warren.omsdk.OMTracker;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.persistence.Designer;
import com.vungle.warren.persistence.GraphicDesigner;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.tasks.JobCreator;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.tasks.ReconfigJob;
import com.vungle.warren.tasks.VungleJobCreator;
import com.vungle.warren.tasks.utility.JobRunnerThreadPriorityHelper;
import com.vungle.warren.utility.AppSession;
import com.vungle.warren.utility.ConcurrencyTimeoutProvider;
import com.vungle.warren.utility.Executors;
import com.vungle.warren.utility.NetworkProvider;
import com.vungle.warren.utility.SDKExecutors;
import com.vungle.warren.utility.TimeoutProvider;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
public class ServiceLocator {
    @SuppressLint({"StaticFieldLeak"})
    private static ServiceLocator INSTANCE;
    private static final ReconfigJob.ReconfigCall RECONFIG_CALL = new ReconfigJob.ReconfigCall() {
        /* class com.vungle.warren.ServiceLocator.AnonymousClass22 */

        @Override // com.vungle.warren.tasks.ReconfigJob.ReconfigCall
        public void reConfigVungle() {
            Vungle.reConfigure();
        }
    };
    static final VungleStaticApi VUNGLE_STATIC_API = new VungleStaticApi() {
        /* class com.vungle.warren.ServiceLocator.AnonymousClass1 */

        @Override // com.vungle.warren.VungleStaticApi
        public Collection<String> getValidPlacements() {
            return Vungle.getValidPlacements();
        }

        @Override // com.vungle.warren.VungleStaticApi
        public boolean isInitialized() {
            return Vungle.isInitialized();
        }
    };
    private Map<Class, Object> cache = new HashMap();
    private Map<Class, Creator> creators = new HashMap();
    private final Context ctx;

    /* access modifiers changed from: private */
    public abstract class Creator<T> {
        private Creator() {
        }

        /* access modifiers changed from: package-private */
        public abstract T create();

        /* access modifiers changed from: package-private */
        public boolean isSingleton() {
            return true;
        }
    }

    private ServiceLocator(Context context) {
        this.ctx = context.getApplicationContext();
        buildCreators();
    }

    private void buildCreators() {
        this.creators.put(JobCreator.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass2 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public JobCreator create() {
                return new VungleJobCreator((Repository) ServiceLocator.this.getOrBuild(Repository.class), (Designer) ServiceLocator.this.getOrBuild(Designer.class), (VungleApiClient) ServiceLocator.this.getOrBuild(VungleApiClient.class), new VungleAnalytics((VungleApiClient) ServiceLocator.this.getOrBuild(VungleApiClient.class)), ServiceLocator.RECONFIG_CALL, (AdLoader) ServiceLocator.this.getOrBuild(AdLoader.class), ServiceLocator.VUNGLE_STATIC_API, (LogManager) ServiceLocator.this.getOrBuild(LogManager.class));
            }
        });
        this.creators.put(JobRunner.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass3 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public JobRunner create() {
                return new VungleJobRunner((JobCreator) ServiceLocator.this.getOrBuild(JobCreator.class), ((Executors) ServiceLocator.this.getOrBuild(Executors.class)).getJobExecutor(), new JobRunnerThreadPriorityHelper(), NetworkProvider.getInstance(ServiceLocator.this.ctx));
            }
        });
        this.creators.put(AdLoader.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass4 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public AdLoader create() {
                return new AdLoader((Executors) ServiceLocator.this.getOrBuild(Executors.class), (Repository) ServiceLocator.this.getOrBuild(Repository.class), (VungleApiClient) ServiceLocator.this.getOrBuild(VungleApiClient.class), (CacheManager) ServiceLocator.this.getOrBuild(CacheManager.class), (Downloader) ServiceLocator.this.getOrBuild(Downloader.class), (RuntimeValues) ServiceLocator.this.getOrBuild(RuntimeValues.class), (VungleStaticApi) ServiceLocator.this.getOrBuild(VungleStaticApi.class), (VisionController) ServiceLocator.this.getOrBuild(VisionController.class), (OperationSequence) ServiceLocator.this.getOrBuild(OperationSequence.class), (OMInjector) ServiceLocator.this.getOrBuild(OMInjector.class));
            }
        });
        this.creators.put(Downloader.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass5 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public Downloader create() {
                return new AssetDownloader((DownloaderCache) ServiceLocator.this.getOrBuild(DownloaderCache.class), AssetDownloader.VERIFICATION_WINDOW, 4, NetworkProvider.getInstance(ServiceLocator.this.ctx), ((Executors) ServiceLocator.this.getOrBuild(Executors.class)).getUIExecutor());
            }
        });
        this.creators.put(VungleApiClient.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass6 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public VungleApiClient create() {
                return new VungleApiClient(ServiceLocator.this.ctx, (CacheManager) ServiceLocator.this.getOrBuild(CacheManager.class), (Repository) ServiceLocator.this.getOrBuild(Repository.class), (OMInjector) ServiceLocator.this.getOrBuild(OMInjector.class));
            }
        });
        this.creators.put(Repository.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass7 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public Repository create() {
                Executors executors = (Executors) ServiceLocator.this.getOrBuild(Executors.class);
                return new Repository(ServiceLocator.this.ctx, (Designer) ServiceLocator.this.getOrBuild(Designer.class), executors.getIOExecutor(), executors.getUIExecutor());
            }
        });
        this.creators.put(LogManager.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass8 */

            /* access modifiers changed from: package-private */
            @Override // com.vungle.warren.ServiceLocator.Creator
            public Object create() {
                return new LogManager(ServiceLocator.this.ctx, (CacheManager) ServiceLocator.this.getOrBuild(CacheManager.class), (VungleApiClient) ServiceLocator.this.getOrBuild(VungleApiClient.class), ((Executors) ServiceLocator.this.getOrBuild(Executors.class)).getLoggerExecutor());
            }
        });
        this.creators.put(Designer.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass9 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public Designer create() {
                return new GraphicDesigner((CacheManager) ServiceLocator.this.getOrBuild(CacheManager.class));
            }
        });
        this.creators.put(CacheManager.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass10 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public CacheManager create() {
                return new CacheManager(ServiceLocator.this.ctx);
            }
        });
        this.creators.put(Executors.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass11 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public Executors create() {
                return new SDKExecutors();
            }
        });
        this.creators.put(RuntimeValues.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass12 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public RuntimeValues create() {
                return new RuntimeValues();
            }
        });
        this.creators.put(VungleStaticApi.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass13 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public VungleStaticApi create() {
                return ServiceLocator.VUNGLE_STATIC_API;
            }
        });
        this.creators.put(PresentationFactory.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass14 */

            /* access modifiers changed from: package-private */
            @Override // com.vungle.warren.ServiceLocator.Creator
            public boolean isSingleton() {
                return false;
            }

            @Override // com.vungle.warren.ServiceLocator.Creator
            public PresentationFactory create() {
                return new AdvertisementPresentationFactory((AdLoader) ServiceLocator.this.getOrBuild(AdLoader.class), (VungleStaticApi) ServiceLocator.this.getOrBuild(VungleStaticApi.class), (Repository) ServiceLocator.this.getOrBuild(Repository.class), (VungleApiClient) ServiceLocator.this.getOrBuild(VungleApiClient.class), (JobRunner) ServiceLocator.this.getOrBuild(JobRunner.class), (RuntimeValues) ServiceLocator.this.getOrBuild(RuntimeValues.class), (OMTracker.Factory) ServiceLocator.this.getOrBuild(OMTracker.Factory.class));
            }
        });
        this.creators.put(DownloaderCache.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass15 */

            /* access modifiers changed from: package-private */
            @Override // com.vungle.warren.ServiceLocator.Creator
            public Object create() {
                CacheManager cacheManager = (CacheManager) ServiceLocator.this.getOrBuild(CacheManager.class);
                return new CleverCache(cacheManager, new LRUCachePolicy(cacheManager, CleverCache.CC_DIR), new DownloaderSizeProvider(cacheManager, (RuntimeValues) ServiceLocator.this.getOrBuild(RuntimeValues.class), 0.1f), TimeUnit.DAYS.toMillis(90));
            }
        });
        this.creators.put(VisionController.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass16 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public VisionController create() {
                return new VisionController((Repository) ServiceLocator.this.getOrBuild(Repository.class), NetworkProvider.getInstance(ServiceLocator.this.ctx));
            }
        });
        this.creators.put(TimeoutProvider.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass17 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public TimeoutProvider create() {
                return new ConcurrencyTimeoutProvider();
            }
        });
        this.creators.put(OperationSequence.class, new Creator() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass18 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public OperationSequence create() {
                return new OperationSequence();
            }
        });
        this.creators.put(AppSession.class, new Creator<AppSession>() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass19 */

            /* access modifiers changed from: package-private */
            @Override // com.vungle.warren.ServiceLocator.Creator
            public AppSession create() {
                return new AppSession();
            }
        });
        this.creators.put(OMInjector.class, new Creator<OMInjector>() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass20 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public OMInjector create() {
                return new OMInjector(ServiceLocator.this.ctx);
            }
        });
        this.creators.put(OMTracker.Factory.class, new Creator<OMTracker.Factory>() {
            /* class com.vungle.warren.ServiceLocator.AnonymousClass21 */

            @Override // com.vungle.warren.ServiceLocator.Creator
            public OMTracker.Factory create() {
                return new OMTracker.Factory();
            }
        });
    }

    static synchronized void deInit() {
        synchronized (ServiceLocator.class) {
            INSTANCE = null;
        }
    }

    static synchronized ServiceLocator getInstance(Context context) {
        ServiceLocator serviceLocator;
        synchronized (ServiceLocator.class) {
            if (INSTANCE == null) {
                INSTANCE = new ServiceLocator(context);
            }
            serviceLocator = INSTANCE;
        }
        return serviceLocator;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private <T> T getOrBuild(Class<T> cls) {
        Class serviceClass = getServiceClass(cls);
        T t = (T) this.cache.get(serviceClass);
        if (t != null) {
            return t;
        }
        Creator creator = this.creators.get(serviceClass);
        if (creator != null) {
            T t2 = (T) creator.create();
            if (creator.isSingleton()) {
                this.cache.put(serviceClass, t2);
            }
            return t2;
        }
        throw new IllegalArgumentException("Unknown class");
    }

    private Class getServiceClass(Class cls) {
        for (Class cls2 : this.creators.keySet()) {
            if (cls2.isAssignableFrom(cls)) {
                return cls2;
            }
        }
        throw new IllegalArgumentException("Unknown dependency for " + cls);
    }

    /* access modifiers changed from: package-private */
    public synchronized <T> void bindService(Class<T> cls, T t) {
        this.cache.put(getServiceClass(cls), t);
    }

    /* access modifiers changed from: package-private */
    public synchronized <T> T getService(Class<T> cls) {
        return (T) getOrBuild(cls);
    }

    /* access modifiers changed from: package-private */
    public synchronized <T> boolean isCreated(Class<T> cls) {
        return this.cache.containsKey(getServiceClass(cls));
    }
}
