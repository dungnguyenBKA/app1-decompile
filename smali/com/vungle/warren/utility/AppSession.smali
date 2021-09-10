.class public Lcom/vungle/warren/utility/AppSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/AppSession$SessionCallback;
    }
.end annotation


# instance fields
.field appLifeCycleCallback:Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

.field private sessionCallback:Lcom/vungle/warren/utility/AppSession$SessionCallback;

.field private sessionData:Lcom/vungle/warren/SessionData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/vungle/warren/utility/AppSession$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/utility/AppSession$1;-><init>(Lcom/vungle/warren/utility/AppSession;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/AppSession;->appLifeCycleCallback:Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/SessionData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/utility/AppSession;->sessionData:Lcom/vungle/warren/SessionData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/utility/AppSession$SessionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/utility/AppSession;->sessionCallback:Lcom/vungle/warren/utility/AppSession$SessionCallback;

    return-object p0
.end method


# virtual methods
.method public observe()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->getInstance()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/utility/AppSession;->appLifeCycleCallback:Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->addListener(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    return-void
.end method

.method public setSessionCallback(Lcom/vungle/warren/utility/AppSession$SessionCallback;)Lcom/vungle/warren/utility/AppSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/AppSession;->sessionCallback:Lcom/vungle/warren/utility/AppSession$SessionCallback;

    return-object p0
.end method

.method public setSessionData(Lcom/vungle/warren/SessionData;)Lcom/vungle/warren/utility/AppSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/AppSession;->sessionData:Lcom/vungle/warren/SessionData;

    return-object p0
.end method
