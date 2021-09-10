.class public final Lcom/google/android/gms/measurement/internal/a3;
.super Lcom/google/android/gms/measurement/internal/y3;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:J

.field private final h:J

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j4;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/y3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/a3;->h:J

    return-void
.end method


# virtual methods
.method protected final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final m()V
    .locals 14
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "appId",
            "appStore",
            "appName",
            "gmpAppId",
            "gaAppId"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Unknown"

    const/high16 v4, -0x80000000

    const-string v5, ""

    const-string v6, "unknown"

    if-nez v1, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 7
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 11
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    .line 12
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v6, :cond_1

    const-string v6, "manual_install"

    goto :goto_1

    :cond_1
    const-string v7, "com.android.vending"

    .line 13
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 14
    :cond_2
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 15
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v7

    .line 16
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 17
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 18
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 19
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 20
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_3
    move-object v8, v3

    .line 21
    :goto_2
    :try_start_2
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 22
    iget v4, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v7, v3

    move-object v3, v8

    goto :goto_3

    :catch_2
    move-object v7, v3

    .line 23
    :goto_3
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 24
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v8

    .line 25
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v8

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    .line 26
    invoke-virtual {v8, v10, v9, v3}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v7

    .line 27
    :cond_4
    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->c:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/a3;->f:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/a3;->d:Ljava/lang/String;

    iput v4, p0, Lcom/google/android/gms/measurement/internal/a3;->e:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/a3;->g:J

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->K()Ljava/lang/String;

    move-result-object v3

    const-string v6, "am"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->k()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    const-string v8, "App measurement disabled due to denied storage consent"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 33
    :pswitch_0
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 35
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    const-string v8, "App measurement disabled via the global data collection setting"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 36
    :pswitch_1
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 37
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 38
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 39
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 40
    :pswitch_2
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 41
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 42
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    const-string v8, "App measurement disabled via the init parameters"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 43
    :pswitch_3
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 44
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 45
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    const-string v8, "App measurement disabled via the manifest"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 46
    :pswitch_4
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 47
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 49
    :pswitch_5
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 50
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 51
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    const-string v8, "App measurement deactivated via the init parameters"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 52
    :pswitch_6
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 53
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 54
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    const-string v8, "App measurement deactivated via the manifest"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 55
    :pswitch_7
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 56
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    .line 57
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v7

    const-string v8, "App measurement collection enabled"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 58
    :goto_6
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/a3;->k:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/a3;->l:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/a3;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 59
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->J()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/a3;->l:Ljava/lang/String;

    :cond_6
    const/4 v3, 0x0

    .line 61
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznb;->zzb()Z

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 62
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v7

    .line 63
    sget-object v8, Lcom/google/android/gms/measurement/internal/v2;->B0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    const-string v8, "google_app_id"

    if-eqz v7, :cond_7

    :try_start_4
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 64
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 65
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->N()Ljava/lang/String;

    move-result-object v9

    .line 66
    invoke-static {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 67
    :cond_7
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 68
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    .line 69
    :try_start_5
    new-instance v9, Lcom/google/android/gms/common/internal/p;

    invoke-direct {v9, v7}, Lcom/google/android/gms/common/internal/p;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v9, v8}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_3
    move-object v7, v3

    .line 71
    :goto_7
    :try_start_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eq v4, v8, :cond_8

    move-object v8, v7

    goto :goto_8

    :cond_8
    move-object v8, v5

    :goto_8
    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/a3;->k:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 73
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/v2;->i0:Lcom/google/android/gms/measurement/internal/u2;

    .line 74
    invoke-virtual {v8, v3, v9}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v8
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    const-string v9, "null reference"

    const-string v10, "admob_app_id"

    if-eqz v8, :cond_f

    .line 75
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznb;->zzb()Z

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 76
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    sget-object v11, Lcom/google/android/gms/measurement/internal/v2;->B0:Lcom/google/android/gms/measurement/internal/u2;

    .line 77
    invoke-virtual {v8, v3, v11}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v8
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4

    const-string v11, "ga_app_id"

    if-eqz v8, :cond_c

    :try_start_8
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 78
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v8

    iget-object v12, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 79
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/j4;->N()Ljava/lang/String;

    move-result-object v12

    .line 80
    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 82
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_9

    .line 83
    :cond_9
    invoke-static {v8}, Landroidx/core/app/b;->S0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 84
    :goto_9
    invoke-static {v11, v9, v12}, Landroidx/core/app/b;->V0(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eq v4, v11, :cond_a

    move-object v5, v8

    :cond_a
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/a3;->m:Ljava/lang/String;

    .line 86
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 87
    :cond_b
    invoke-static {v10, v9, v12}, Landroidx/core/app/b;->V0(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/a3;->l:Ljava/lang/String;

    goto/16 :goto_b

    .line 88
    :cond_c
    new-instance v8, Lcom/google/android/gms/common/internal/p;

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 89
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v9

    .line 90
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/internal/p;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v8, v11}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eq v4, v11, :cond_d

    move-object v5, v9

    :cond_d
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/a3;->m:Ljava/lang/String;

    .line 93
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 94
    :cond_e
    invoke-virtual {v8, v10}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/a3;->l:Ljava/lang/String;

    goto :goto_b

    .line 95
    :cond_f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 96
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznb;->zzb()Z

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 97
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/v2;->B0:Lcom/google/android/gms/measurement/internal/u2;

    .line 98
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 99
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 100
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->N()Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-static {v4, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 103
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_a

    .line 104
    :cond_10
    invoke-static {v4}, Landroidx/core/app/b;->S0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 105
    :goto_a
    invoke-static {v10, v7, v5}, Landroidx/core/app/b;->V0(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/a3;->l:Ljava/lang/String;

    goto :goto_b

    .line 106
    :cond_11
    new-instance v4, Lcom/google/android/gms/common/internal/p;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 107
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v5

    .line 108
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/internal/p;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v4, v10}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/a3;->l:Ljava/lang/String;

    :cond_12
    :goto_b
    if-nez v6, :cond_14

    .line 110
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 111
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v4

    const-string v5, "App measurement enabled for app package, google app id"

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/a3;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/a3;->k:Ljava/lang/String;

    .line 113
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/a3;->l:Ljava/lang/String;

    goto :goto_c

    .line 114
    :cond_13
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/a3;->k:Ljava/lang/String;

    .line 115
    :goto_c
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_d

    :catch_4
    move-exception v4

    .line 116
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 117
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v5

    .line 118
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/i3;->w(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Fetching Google App Id failed with exception. appId"

    .line 119
    invoke-virtual {v5, v6, v0, v4}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :cond_14
    :goto_d
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/a3;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 123
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "analytics.safelisted_events"

    .line 124
    invoke-static {v4}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->v()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_15

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 126
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    .line 127
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v4

    const-string v5, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_e

    .line 128
    :cond_15
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    :goto_e
    move-object v4, v3

    goto :goto_f

    .line 129
    :cond_16
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_f
    if-eqz v4, :cond_18

    .line 130
    :try_start_9
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 131
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v5

    .line 132
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    goto :goto_10

    .line 133
    :cond_17
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_10

    :catch_5
    move-exception v4

    .line 134
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v5, "Failed to load string array from metadata: resource not found"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_10
    if-nez v3, :cond_19

    goto :goto_11

    .line 137
    :cond_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v3, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_12

    .line 140
    :cond_1a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 141
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v5

    const-string v6, "safelisted event"

    .line 142
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/h9;->h0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_12

    .line 143
    :cond_1c
    :goto_11
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/a3;->i:Ljava/util/List;

    :goto_12
    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lwv;->a(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/a3;->j:I

    return-void

    :cond_1d
    iput v2, p0, Lcom/google/android/gms/measurement/internal/a3;->j:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final n(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .locals 35

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    .line 2
    new-instance v31, Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/a3;->o()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/a3;->p()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/a3;->d:Ljava/lang/String;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget v0, v1, Lcom/google/android/gms/measurement/internal/a3;->e:I

    int-to-long v6, v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/a3;->f:Ljava/lang/String;

    const-string v2, "null reference"

    .line 8
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/a3;->f:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->n()J

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/a3;->g:J

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    cmp-long v0, v9, v11

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v10

    .line 16
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 17
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-static {v10}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 20
    invoke-static {}, Lcom/google/android/gms/measurement/internal/h9;->A()Ljava/security/MessageDigest;

    move-result-object v15

    const-wide/16 v16, -0x1

    if-nez v15, :cond_0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v9, "Could not get MD5 instance"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    :goto_0
    move-wide/from16 v9, v16

    goto :goto_1

    :cond_0
    if-eqz v14, :cond_3

    .line 23
    :try_start_0
    invoke-virtual {v9, v0, v10}, Lcom/google/android/gms/measurement/internal/h9;->J(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 24
    invoke-static {v0}, Lyv;->a(Landroid/content/Context;)Lxv;

    move-result-object v0

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 25
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v10

    .line 26
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x40

    invoke-virtual {v0, v10, v14}, Lxv;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 27
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    array-length v10, v0

    if-lez v10, :cond_1

    .line 28
    aget-object v0, v0, v13

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/h9;->B([B)J

    move-result-wide v9

    move-wide/from16 v16, v9

    goto :goto_0

    :cond_1
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v10, "Could not get signatures"

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-wide/from16 v16, v11

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 33
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v9

    .line 34
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v9

    const-string v10, "Package name not found"

    invoke-virtual {v9, v10, v0}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    move-wide v9, v11

    .line 35
    :goto_1
    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/a3;->g:J

    :cond_4
    move-wide v14, v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result v0

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 37
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v9

    .line 38
    iget-boolean v9, v9, Lcom/google/android/gms/measurement/internal/v3;->u:Z

    const/4 v10, 0x1

    xor-int/lit8 v16, v9, 0x1

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 40
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result v9

    const/4 v11, 0x0

    if-nez v9, :cond_5

    :goto_2
    move-object/from16 v21, v11

    goto/16 :goto_4

    .line 41
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznk;->zzb()Z

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 42
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    .line 43
    sget-object v12, Lcom/google/android/gms/measurement/internal/v2;->k0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 44
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v9

    const-string v12, "Disabled IID for tests."

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :try_start_1
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 46
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v9

    .line 47
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v12, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 48
    invoke-virtual {v9, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    :try_start_2
    new-array v12, v10, [Ljava/lang/Class;

    const-class v19, Landroid/content/Context;

    aput-object v19, v12, v13

    const-string v11, "getInstance"

    .line 49
    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 50
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v10

    aput-object v10, v12, v13

    const/4 v10, 0x0

    .line 51
    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v11, :cond_8

    goto :goto_3

    :cond_8
    :try_start_3
    const-string v10, "getFirebaseInstanceId"

    new-array v12, v13, [Ljava/lang/Class;

    .line 52
    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    .line 53
    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v21, v9

    goto :goto_4

    .line 54
    :catch_1
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 55
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v9

    .line 56
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v9

    const-string v10, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 57
    :catch_2
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 58
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v9

    .line 59
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/i3;->r()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v9

    const-string v10, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    :catch_3
    :goto_3
    const/16 v21, 0x0

    .line 60
    :goto_4
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 61
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v10

    .line 62
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/v3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/s3;->a()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 63
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v17, 0x0

    cmp-long v22, v11, v17

    if-nez v22, :cond_9

    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/j4;->H:J

    goto :goto_5

    .line 64
    :cond_9
    iget-wide v11, v9, Lcom/google/android/gms/measurement/internal/j4;->H:J

    .line 65
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :goto_5
    move-wide/from16 v22, v9

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget v11, v1, Lcom/google/android/gms/measurement/internal/a3;->j:I

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 67
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    .line 68
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/e;->y()Z

    move-result v24

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v9

    .line 70
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "deferred_analytics_collection"

    .line 71
    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/a3;->l:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 73
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    const-string v10, "google_analytics_default_allow_ad_personalization_signals"

    .line 74
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/e;->w(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    if-nez v9, :cond_a

    const/16 v26, 0x0

    goto :goto_6

    .line 75
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v26, v9

    .line 76
    :goto_6
    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/a3;->h:J

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/a3;->i:Ljava/util/List;

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    move-wide/from16 v17, v9

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 78
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    .line 79
    sget-object v10, Lcom/google/android/gms/measurement/internal/v2;->i0:Lcom/google/android/gms/measurement/internal/u2;

    move/from16 v20, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/a3;->m:Ljava/lang/String;

    .line 81
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/a3;->m:Ljava/lang/String;

    move-object/from16 v29, v2

    goto :goto_7

    :cond_b
    const/16 v29, 0x0

    .line 83
    :goto_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v9, Lcom/google/android/gms/measurement/internal/v2;->w0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v10, 0x0

    .line 85
    invoke-virtual {v2, v10, v9}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/v3;->s()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_c
    const-string v2, ""

    :goto_8
    move-object/from16 v30, v2

    const-wide/32 v9, 0x9858

    move-wide/from16 v27, v17

    const-wide/16 v17, 0x0

    move-object/from16 v2, v31

    move-object/from16 v33, v12

    move/from16 v32, v20

    move-wide v11, v14

    move-object/from16 v34, v13

    move-object/from16 v13, p1

    move v14, v0

    move/from16 v15, v16

    move-object/from16 v16, v21

    move-wide/from16 v19, v22

    move/from16 v21, v32

    move/from16 v22, v24

    move/from16 v23, v25

    move-object/from16 v24, v34

    move-object/from16 v25, v26

    move-wide/from16 v26, v27

    move-object/from16 v28, v33

    .line 88
    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v31
.end method

.method final o()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->c:Ljava/lang/String;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->c:Ljava/lang/String;

    return-object v0
.end method

.method final p()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->k:Ljava/lang/String;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->k:Ljava/lang/String;

    return-object v0
.end method

.method final q()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->l:Ljava/lang/String;

    return-object v0
.end method

.method final r()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->m:Ljava/lang/String;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->m:Ljava/lang/String;

    return-object v0
.end method

.method final s()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/a3;->e:I

    return v0
.end method

.method final t()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/a3;->j:I

    return v0
.end method

.method final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->i:Ljava/util/List;

    return-object v0
.end method
