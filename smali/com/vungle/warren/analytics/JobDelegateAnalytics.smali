.class public Lcom/vungle/warren/analytics/JobDelegateAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/analytics/AdAnalytics;


# instance fields
.field private final jobRunner:Lcom/vungle/warren/tasks/JobRunner;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/tasks/JobRunner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/analytics/JobDelegateAnalytics;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    return-void
.end method


# virtual methods
.method public ping([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/analytics/JobDelegateAnalytics;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public ri(Ls60;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/analytics/JobDelegateAnalytics;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    invoke-virtual {p1}, Lp60;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    return-void
.end method
