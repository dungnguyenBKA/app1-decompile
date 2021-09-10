.class public Lgc0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = -0x1


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcc0;->l(Landroid/content/Context;)Lcom/google/ads/consent/ConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    if-ne v0, v1, :cond_1

    return-void

    .line 2
    :cond_1
    sget v0, Lgc0;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "enable_analytics"

    .line 3
    invoke-static {p0, v0, v2}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lgc0;->a:I

    .line 4
    :cond_2
    sget v0, Lgc0;->a:I

    const/4 v1, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    if-nez v2, :cond_4

    return-void

    .line 5
    :cond_4
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_7

    .line 7
    aget-object v2, p3, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 8
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_5
    aget-object v2, p3, v1

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 10
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_7
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
