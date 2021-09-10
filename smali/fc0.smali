.class public Lfc0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lfc0;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfc0;
    .locals 1

    .line 1
    sget-object v0, Lfc0;->a:Lfc0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfc0;

    invoke-direct {v0}, Lfc0;-><init>()V

    sput-object v0, Lfc0;->a:Lfc0;

    .line 3
    :cond_0
    sget-object v0, Lfc0;->a:Lfc0;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/zjsoft/baseadlib/b;->a:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/zjsoft/baseadlib/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ad_log"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    sget-boolean v0, Lcom/zjsoft/baseadlib/b;->a:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/zjsoft/baseadlib/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
