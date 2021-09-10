.class public Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
.implements Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;
.implements Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final ACTION_WITH_VALUE:Ljava/lang/String; = "actionWithValue"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final CONSENT_ACTION:Ljava/lang/String; = "consentAction"

.field private static final EXTRA_INCENTIVIZED_SENT:Ljava/lang/String; = "incentivized_sent"

.field private static final EXTRA_REPORT:Ljava/lang/String; = "saved_report"

.field private static final OPEN:Ljava/lang/String; = "open"

.field private static final OPEN_NON_MRAID:Ljava/lang/String; = "openNonMraid"

.field private static final OPEN_PRIVACY:Ljava/lang/String; = "openPrivacy"

.field private static final SUCCESSFUL_VIEW:Ljava/lang/String; = "successfulView"

.field private static final TAG:Ljava/lang/String; = "com.vungle.warren.ui.presenter.MRAIDAdPresenter"

.field private static final TPAT:Ljava/lang/String; = "tpat"

.field private static final USE_CUSTOM_CLOSE:Ljava/lang/String; = "useCustomClose"

.field private static final USE_CUSTOM_PRIVACY:Ljava/lang/String; = "useCustomPrivacy"

.field private static final VIDEO_VIEWED:Ljava/lang/String; = "videoViewed"


# instance fields
.field private adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

.field private adViewed:Z

.field private advertisement:Lcom/vungle/warren/model/Advertisement;

.field private final analytics:Lcom/vungle/warren/analytics/AdAnalytics;

.field private assetDir:Ljava/io/File;

.field private backEnabled:Z

.field private bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private cookieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/model/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private duration:J

.field private durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

.field private fileExistenceOperation:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

.field private isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final omTracker:Lcom/vungle/warren/omsdk/OMTracker;

.field private final placement:Lcom/vungle/warren/model/Placement;

.field private repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

.field private report:Lcom/vungle/warren/model/Report;

.field private repository:Lcom/vungle/warren/persistence/Repository;

.field private final scheduler:Lcom/vungle/warren/utility/Scheduler;

.field private sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sessionData:Lcom/vungle/warren/SessionData;

.field private webClient:Lcom/vungle/warren/ui/view/WebViewAPI;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/omsdk/OMTracker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    .line 6
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 7
    iput-object p3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 8
    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    .line 9
    iput-object p4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    .line 10
    iput-object p5, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    .line 11
    iput-object p6, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    .line 12
    iput-object p8, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->assetDir:Ljava/io/File;

    .line 13
    iput-object p9, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sessionData:Lcom/vungle/warren/SessionData;

    .line 14
    iput-object p10, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->omTracker:Lcom/vungle/warren/omsdk/OMTracker;

    .line 15
    invoke-direct {p0, p7}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadData(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->makeBusError(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    return-void
.end method

.method static synthetic access$202(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    return-object p0
.end method

.method private closeView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->close()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Scheduler;->cancelAll()V

    return-void
.end method

.method private download()V
    .locals 5

    const-string v0, "cta"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, v1}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-direct {v2, v3, v4}, Lcom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->open(Ljava/lang/String;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download - Activity Not Found"

    .line 6
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleWebViewException(I)V
    .locals 3
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->removeWebView()V

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#handleWebViewException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewException: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 5
    invoke-virtual {v2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportErrorAndCloseAd(I)V

    return-void
.end method

.method private loadData(Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 4

    .line 1
    const-class v0, Lcom/vungle/warren/model/Cookie;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "incentivizedTextSetByPub"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "consentIsImportantToVungle"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "configSettings"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string v0, "saved_report"

    .line 4
    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Report;

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    :cond_1
    return-void
.end method

.method private loadMraid(Ljava/io/File;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "index.html"

    invoke-static {v1, v0, v2}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;Ljava/io/File;)V

    invoke-static {p1, v0}, Lcom/vungle/warren/utility/AsyncFileUtils;->isFileExistAsync(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->fileExistenceOperation:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    return-void
.end method

.method private makeBusError(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private prepare(Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setMRAIDDelegate(Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setErrorHandler(Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V

    .line 3
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->assetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "template"

    invoke-static {v0, v1, v2}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadMraid(Ljava/io/File;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v0, "incentivizedTextSetByPub"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    const-string v1, "userID"

    .line 6
    invoke-virtual {p1, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sessionData:Lcom/vungle/warren/SessionData;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/vungle/warren/model/Report;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;Lcom/vungle/warren/SessionData;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    .line 9
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getTtDownload()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/vungle/warren/model/Report;->setTtDownload(J)V

    .line 10
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    if-nez p1, :cond_2

    .line 12
    new-instance p1, Lcom/vungle/warren/ui/DurationRecorder;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-direct {p1, v1, v2, v3}, Lcom/vungle/warren/ui/DurationRecorder;-><init>(Lcom/vungle/warren/model/Report;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v1, "consentIsImportantToVungle"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const-string v2, "is_country_data_protected"

    .line 14
    invoke-virtual {p1, v2}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "consent_status"

    if-eqz v2, :cond_3

    invoke-virtual {p1, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "unknown"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 15
    :goto_1
    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const-string v5, "consent_title"

    .line 16
    invoke-virtual {p1, v5}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "consent_message"

    .line 17
    invoke-virtual {p1, v5}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "button_accept"

    .line 18
    invoke-virtual {p1, v5}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "button_deny"

    .line 19
    invoke-virtual {p1, v5}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move v5, v2

    .line 20
    invoke-interface/range {v4 .. v9}, Lcom/vungle/warren/ui/view/WebViewAPI;->setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string v2, "opted_out_by_timeout"

    .line 21
    invoke-virtual {p1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {p1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "consent_source"

    const-string v3, "vungle_modal"

    .line 23
    invoke-virtual {p1, v2, v3}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v2, p1, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/vungle/warren/model/Advertisement;->getShowCloseDelay(Z)I

    move-result p1

    if-lez p1, :cond_5

    .line 26
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    new-instance v2, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lcom/vungle/warren/utility/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 27
    :cond_5
    iput-boolean v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    .line 28
    :goto_2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->updateWindow()V

    .line 29
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_6

    .line 30
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-interface {p1, v2, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private reportErrorAndCloseAd(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->makeBusError(I)V

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->attach(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public attach(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    .line 4
    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->omTracker:Lcom/vungle/warren/omsdk/OMTracker;

    invoke-virtual {v0}, Lcom/vungle/warren/omsdk/OMTracker;->start()V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    :cond_1
    const/4 v0, -0x1

    .line 8
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/AdConfig;->getAdOrientation()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x7

    if-ne v1, v3, :cond_4

    .line 9
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    const/4 v4, 0x7

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x4

    .line 10
    :goto_1
    invoke-interface {p1, v4}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->setOrientation(I)V

    .line 11
    invoke-direct {p0, p2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->prepare(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public detach(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/ui/contract/AdContract$AdStopReason;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->fileExistenceOperation:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->stop(I)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setWebViewObserver(Lcom/vungle/warren/omsdk/WebViewObserver;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->omTracker:Lcom/vungle/warren/omsdk/OMTracker;

    invoke-virtual {p1}, Lcom/vungle/warren/omsdk/OMTracker;->stop()J

    move-result-wide v0

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->destroyAdView(J)V

    return-void
.end method

.method public generateSaveState(Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Report;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saved_report"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "incentivized_sent"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public handleExit()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    const-string v1, "javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()"

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->showWebsite(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMraidAction(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "download"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "privacy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown action "

    invoke-static {v1, p1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->download()V

    goto :goto_1

    .line 4
    :pswitch_1
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    :goto_1
    :pswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x12bedc78 -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x551ac888 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceivedError(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onReceivedError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 1

    const/16 p1, 0x20

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->handleWebViewException(I)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#onRenderProcessUnresponsive"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 4
    invoke-virtual {v0}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewConfigurationChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->updateWindow()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    return-void
.end method

.method public onWebRenderingProcessGone(Landroid/webkit/WebView;Z)Z
    .locals 1

    const/16 p1, 0x1f

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->handleWebViewException(I)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onWebRenderingProcessGone"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 4
    invoke-virtual {v0}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public processCommand(Ljava/lang/String;Ls60;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "useCustomPrivacy"

    const-string v5, "openNonMraid"

    const-string v6, "successfulView"

    const-string v7, "open"

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "useCustomClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "close"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "tpat"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "openPrivacy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_7
    const-string v3, "consentAction"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_8
    const-string v3, "actionWithValue"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_9
    const-string v3, "action"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_a
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x0

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v8, "user"

    const-string v9, "adStartTime"

    const-string v10, "app_id"

    const-string v11, "placement_reference_id"

    const-string v12, "isReportIncentivizedEnabled"

    const-string v13, "Unknown value "

    const-string v14, "configSettings"

    const-string v15, "url"

    move-object/from16 v16, v6

    const-string v6, "gone"

    move-object/from16 v17, v8

    const-string v8, "event"

    move-object/from16 v18, v9

    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#processCommand"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown MRAID Command"

    .line 4
    invoke-static {v1, v2}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :pswitch_0
    const-string v1, "sdkCloseButton"

    .line 5
    invoke-virtual {v2, v1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    invoke-virtual {v1}, Lp60;->h()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_2

    :sswitch_b
    const-string v2, "visible"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_c
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x1

    goto :goto_3

    :sswitch_d
    const-string v2, "invisible"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    const/4 v2, 0x0

    goto :goto_3

    :goto_2
    const/4 v2, -0x1

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v13, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    const/4 v1, 0x1

    return v1

    :pswitch_2
    const/4 v1, 0x1

    const-string v2, "mraidClose"

    .line 8
    invoke-virtual {v0, v2, v9}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    return v1

    :pswitch_3
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v2, v8}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v2

    invoke-virtual {v2}, Lp60;->h()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v4, v2}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    return v1

    .line 12
    :pswitch_4
    invoke-virtual {v2, v4}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    invoke-virtual {v1}, Lp60;->h()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2

    goto :goto_4

    :sswitch_e
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v2, 0x2

    goto :goto_5

    :sswitch_f
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_4

    :cond_f
    const/4 v2, 0x1

    goto :goto_5

    :sswitch_10
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_4

    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    :goto_4
    const/4 v2, -0x1

    :goto_5
    packed-switch v2, :pswitch_data_2

    .line 14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v13, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_5
    const/4 v1, 0x1

    return v1

    :pswitch_6
    const-string v3, "download"

    .line 15
    invoke-virtual {v0, v3, v9}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v1, "mraidOpen"

    .line 17
    invoke-virtual {v0, v1, v9}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 18
    :cond_11
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "nonMraidOpen"

    .line 19
    invoke-virtual {v0, v1, v9}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_12
    :goto_6
    invoke-virtual {v2, v15}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    invoke-virtual {v1}, Lp60;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_7

    .line 22
    :cond_13
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    new-instance v3, Lcom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-direct {v3, v4, v5}, Lcom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V

    invoke-interface {v2, v1, v3}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->open(Ljava/lang/String;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    goto :goto_8

    .line 23
    :cond_14
    :goto_7
    sget-object v1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v2, "CTA destination URL is not configured properly"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_8
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_15

    .line 25
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adClick"

    invoke-interface {v1, v7, v3, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/4 v1, 0x1

    return v1

    :pswitch_7
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v2, v15}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v2

    invoke-virtual {v2}, Lp60;->h()Ljava/lang/String;

    move-result-object v2

    .line 27
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    new-instance v4, Lcom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v6, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-direct {v4, v5, v6}, Lcom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V

    invoke-interface {v3, v2, v4}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->open(Ljava/lang/String;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    return v1

    .line 28
    :pswitch_8
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v3, "consentIsImportantToVungle"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    if-nez v1, :cond_16

    .line 29
    new-instance v1, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v1, v3}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 30
    :cond_16
    invoke-virtual {v2, v8}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v2

    invoke-virtual {v2}, Lp60;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "consent_status"

    .line 31
    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "consent_source"

    const-string v3, "vungle_modal"

    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v2, v1, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    const/4 v1, 0x1

    return v1

    .line 35
    :pswitch_9
    invoke-virtual {v2, v8}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    invoke-virtual {v1}, Lp60;->h()Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    .line 36
    invoke-virtual {v2, v3}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v2

    invoke-virtual {v2}, Lp60;->h()Ljava/lang/String;

    move-result-object v2

    .line 37
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 38
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v3, v4, v5}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    const-string v3, "videoViewed"

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    .line 40
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 41
    :catch_0
    sget-object v4, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v5, "value for videoViewed is null !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 42
    :goto_9
    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v5, :cond_17

    cmpl-float v3, v4, v3

    if-lez v3, :cond_17

    iget-boolean v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adViewed:Z

    if-nez v3, :cond_17

    const/4 v3, 0x1

    .line 43
    iput-boolean v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adViewed:Z

    .line 44
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "adViewed"

    invoke-interface {v5, v6, v9, v3}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_17
    iget-wide v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_1a

    long-to-float v3, v5

    div-float/2addr v4, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v4, v3

    float-to-int v3, v4

    if-lez v3, :cond_19

    .line 46
    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v4, :cond_18

    const-string v5, "percentViewed:"

    .line 47
    invoke-static {v5, v3}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v6}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v9, v6}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_18
    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/Cookie;

    .line 49
    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x4b

    if-le v3, v5, :cond_19

    if-eqz v4, :cond_19

    .line 50
    invoke-virtual {v4, v12}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    .line 51
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_19

    .line 52
    new-instance v3, Ls60;

    invoke-direct {v3}, Ls60;-><init>()V

    .line 53
    new-instance v4, Lu60;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lu60;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11, v4}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 54
    new-instance v4, Lu60;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lu60;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v4}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 55
    new-instance v4, Lu60;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lu60;-><init>(Ljava/lang/Number;)V

    move-object/from16 v5, v18

    invoke-virtual {v3, v5, v4}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 56
    new-instance v4, Lu60;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lu60;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v17

    invoke-virtual {v3, v6, v4}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 57
    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v4, v3}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Ls60;)V

    .line 58
    :cond_19
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v3}, Lcom/vungle/warren/ui/DurationRecorder;->update()V

    :cond_1a
    const-string v3, "videoLength"

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 60
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    .line 61
    invoke-virtual {v0, v3, v2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    goto :goto_a

    :cond_1b
    const/4 v2, 0x1

    .line 63
    :goto_a
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v1, v2}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setVisibility(Z)V

    return v2

    :pswitch_a
    const/4 v1, 0x1

    return v1

    :pswitch_b
    move-object/from16 v6, v17

    move-object/from16 v5, v18

    .line 64
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_1c

    .line 65
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-interface {v1, v3, v9, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1c
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    .line 67
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v12}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 68
    new-instance v1, Ls60;

    invoke-direct {v1}, Ls60;-><init>()V

    .line 69
    new-instance v2, Lu60;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lu60;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v2}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 70
    new-instance v2, Lu60;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lu60;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v2}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 71
    new-instance v2, Lu60;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lu60;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v5, v2}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 72
    new-instance v2, Lu60;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lu60;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 73
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v2, v1}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Ls60;)V

    :cond_1d
    const/4 v1, 0x1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x71fc83a1 -> :sswitch_a
        -0x54d081ca -> :sswitch_9
        -0x2bd2454b -> :sswitch_8
        -0x2762d110 -> :sswitch_7
        -0x1e7a3222 -> :sswitch_6
        -0x18f2f4ec -> :sswitch_5
        -0x14bf8370 -> :sswitch_4
        0x34264a -> :sswitch_3
        0x366baf -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x6037d900 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x715b4053 -> :sswitch_d
        0x30809f -> :sswitch_c
        0x1bd1f072 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x30809f -> :sswitch_10
        0x36758e -> :sswitch_f
        0x5cb1923 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "videoLength"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/warren/model/Report;->setVideoLength(J)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void
.end method

.method public restoreFromSave(Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "incentivized_sent"

    .line 1
    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->close()V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#restoreFromSave"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "The advertisement was not started and cannot be restored."

    .line 7
    invoke-static {p1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setAdVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/view/WebViewAPI;->setAdVisibility(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/DurationRecorder;->start()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/DurationRecorder;->stop()V

    :goto_0
    return-void
.end method

.method public setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->hasWebView()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    .line 2
    invoke-direct {p0, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportErrorAndCloseAd(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->setImmersiveMode()V

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->resumeWeb()V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->setAdVisibility(Z)V

    return-void
.end method

.method public stop(I)V
    .locals 5
    .param p1    # I
        .annotation build Lcom/vungle/warren/ui/contract/AdContract$AdStopReason;
        .end annotation
    .end param

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 1
    :goto_2
    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v4}, Lcom/vungle/warren/ui/contract/AdContract$AdView;->pauseWeb()V

    .line 2
    invoke-virtual {p0, v1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->setAdVisibility(Z)V

    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/view/WebViewAPI;->setMRAIDDelegate(Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V

    :cond_3
    if-eqz p1, :cond_4

    const-string p1, "mraidCloseByApi"

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v0, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 8
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_6

    .line 9
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Report;->isCTAClicked()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "isCTAClicked"

    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "end"

    invoke-interface {p1, v2, v1, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
