.class Lcom/google/android/gms/common/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/common/t;


# instance fields
.field final a:Z

.field private final b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/t;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/common/t;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/common/t;->d:Lcom/google/android/gms/common/t;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/common/t;->a:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/t;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/t;->c:Ljava/lang/Throwable;

    return-void
.end method

.method static a()Lcom/google/android/gms/common/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/t;->d:Lcom/google/android/gms/common/t;

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/google/android/gms/common/t;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/t;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method c()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method final d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/t;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "GoogleCertificatesRslt"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/t;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/t;->c()Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/t;->c()Ljava/lang/String;

    :cond_1
    return-void
.end method
