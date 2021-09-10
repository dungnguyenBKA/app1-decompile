.class Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;
.super Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullScreenPresentationTask"
.end annotation


# instance fields
.field private final adLoader:Lcom/vungle/warren/AdLoader;

.field private advertisement:Lcom/vungle/warren/model/Advertisement;

.field private final apiClient:Lcom/vungle/warren/VungleApiClient;

.field private final closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

.field private context:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private final fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

.field private final jobRunner:Lcom/vungle/warren/tasks/JobRunner;

.field private final omTrackerFactory:Lcom/vungle/warren/omsdk/OMTracker$Factory;

.field private final optionsState:Lcom/vungle/warren/ui/state/OptionsState;

.field private final orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

.field private final placementId:Ljava/lang/String;

.field private final savedState:Landroid/os/Bundle;

.field private final sessionData:Lcom/vungle/warren/SessionData;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/PresentationFactory$FullScreenCallback;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;Landroid/os/Bundle;Lcom/vungle/warren/omsdk/OMTracker$Factory;)V
    .locals 4

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p14

    .line 1
    invoke-direct {p0, p4, p5, v3}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;)V

    move-object v1, p3

    .line 2
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->placementId:Ljava/lang/String;

    move-object v1, p9

    .line 3
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    move-object v1, p10

    .line 4
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->optionsState:Lcom/vungle/warren/ui/state/OptionsState;

    move-object v1, p1

    .line 5
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Landroid/content/Context;

    move-object/from16 v1, p13

    .line 6
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    move-object/from16 v1, p15

    .line 7
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->savedState:Landroid/os/Bundle;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->apiClient:Lcom/vungle/warren/VungleApiClient;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

    move-object/from16 v1, p12

    .line 11
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

    move-object v1, p2

    .line 12
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->adLoader:Lcom/vungle/warren/AdLoader;

    move-object v1, p8

    .line 13
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->sessionData:Lcom/vungle/warren/SessionData;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->omTrackerFactory:Lcom/vungle/warren/omsdk/OMTracker$Factory;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
    .locals 12

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->placementId:Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->savedState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->loadPresentationData(Ljava/lang/String;Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Lcom/vungle/warren/error/VungleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 4
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/vungle/warren/model/Placement;

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->adLoader:Lcom/vungle/warren/AdLoader;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/AdLoader;->canRenderAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Advertisement is null or assets are missing"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    .line 8
    :cond_0
    new-instance v6, Lcom/vungle/warren/analytics/JobDelegateAnalytics;

    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    invoke-direct {v6, p1}, Lcom/vungle/warren/analytics/JobDelegateAnalytics;-><init>(Lcom/vungle/warren/tasks/JobRunner;)V

    .line 9
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "appId"

    invoke-virtual {p1, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p1, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    :cond_1
    new-instance p1, Lcom/vungle/warren/ui/view/VungleWebClient;

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p1, v1, v3}, Lcom/vungle/warren/ui/view/VungleWebClient;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;)V

    .line 13
    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/io/File;

    if-eqz v9, :cond_6

    .line 14
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 16
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->omTrackerFactory:Lcom/vungle/warren/omsdk/OMTracker$Factory;

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->apiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v1}, Lcom/vungle/warren/VungleApiClient;->getOmEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getOmEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/vungle/warren/omsdk/OMTracker$Factory;->make(Z)Lcom/vungle/warren/omsdk/OMTracker;

    move-result-object v11

    .line 18
    invoke-virtual {p1, v11}, Lcom/vungle/warren/ui/view/VungleWebClient;->setWebViewObserver(Lcom/vungle/warren/omsdk/WebViewObserver;)V

    .line 19
    new-instance v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lcom/vungle/warren/persistence/Repository;

    new-instance v5, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v5}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    iget-object v8, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->optionsState:Lcom/vungle/warren/ui/state/OptionsState;

    iget-object v10, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->sessionData:Lcom/vungle/warren/SessionData;

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v11}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/omsdk/OMTracker;)V

    .line 20
    new-instance v1, Lcom/vungle/warren/ui/view/MRAIDAdView;

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

    iget-object v5, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vungle/warren/ui/view/MRAIDAdView;-><init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    .line 21
    new-instance v2, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v2, v1, v0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;)V

    return-object v2

    .line 22
    :cond_5
    new-instance v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lcom/vungle/warren/persistence/Repository;

    new-instance v5, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v5}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    iget-object v8, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->optionsState:Lcom/vungle/warren/ui/state/OptionsState;

    iget-object v10, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->sessionData:Lcom/vungle/warren/SessionData;

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;)V

    .line 23
    new-instance v1, Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

    iget-object v5, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vungle/warren/ui/view/LocalAdView;-><init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    .line 24
    new-instance v2, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v2, v1, v0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;)V

    return-object v2

    .line 25
    :cond_6
    :goto_1
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Advertisement assets dir is missing"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 27
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->doInBackground([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V
    .locals 4

    .line 2
    invoke-super {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->onPostExecute(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    .line 3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object v1

    const-string v2, "Exception on creating presenter"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/PresentationFactory$FullScreenCallback;->onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$200(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/view/VungleWebClient;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/ui/JavascriptBridge;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vungle/warren/ui/JavascriptBridge;-><init>(Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->linkWebView(Landroid/webkit/WebViewClient;Lcom/vungle/warren/ui/JavascriptBridge;)V

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$400(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdView;

    move-result-object v2

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/PresentationFactory$FullScreenCallback;->onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->onPostExecute(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    return-void
.end method
