.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Leu;

.field private c:Landroid/app/AlarmManager;

.field private final d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;

.field private final e:Lmv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Leu;Lmv;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;)V
    .locals 1

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->b:Leu;

    .line 5
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->c:Landroid/app/AlarmManager;

    .line 6
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->e:Lmv;

    .line 7
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;

    return-void
.end method


# virtual methods
.method public a(Lit;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->b(Lit;IZ)V

    return-void
.end method

.method public b(Lit;IZ)V
    .locals 8

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lit;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backendName"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3
    invoke-virtual {p1}, Lit;->d()Lyr;

    move-result-object v1

    invoke-static {v1}, Lrv;->a(Lyr;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "priority"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5
    invoke-virtual {p1}, Lit;->c()[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lit;->c()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extras"

    .line 7
    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->a:Landroid/content/Context;

    const-class v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "attemptNumber"

    .line 10
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v3, "AlarmManagerScheduler"

    if-nez p3, :cond_2

    .line 11
    iget-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->a:Landroid/content/Context;

    const/high16 v4, 0x20000000

    invoke-static {p3, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    const-string p2, "Upload for context %s is already scheduled. Returning..."

    .line 12
    invoke-static {v3, p2, p1}, Lst;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_2
    iget-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->b:Leu;

    invoke-interface {p3, p1}, Leu;->X(Lit;)J

    move-result-wide v4

    .line 14
    iget-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;

    .line 15
    invoke-virtual {p1}, Lit;->d()Lyr;

    move-result-object v6

    invoke-virtual {p3, v6, v4, v5, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->b(Lyr;JI)J

    move-result-wide v6

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    .line 16
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v0

    const/4 p1, 0x2

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, p1

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p3, p2

    const-string p1, "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d"

    .line 19
    invoke-static {v3, p1, p3}, Lst;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->a:Landroid/content/Context;

    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 21
    iget-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->c:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/a;->e:Lmv;

    .line 22
    invoke-interface {v0}, Lmv;->a()J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 23
    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
