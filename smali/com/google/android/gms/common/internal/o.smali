.class public final Lcom/google/android/gms/common/internal/o;
.super Lbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbw<",
        "Lcom/google/android/gms/common/internal/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/o;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/o;->a:Lcom/google/android/gms/common/internal/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lbw;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroid/view/View;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/o;->a:Lcom/google/android/gms/common/internal/o;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/internal/SignInButtonConfig;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/common/internal/SignInButtonConfig;-><init>(II)V

    .line 4
    invoke-static {p0}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v2

    .line 5
    invoke-virtual {v0, p0}, Lbw;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/internal/l;

    invoke-interface {p0, v2, v1}, Lcom/google/android/gms/common/internal/l;->q(Lzv;Lcom/google/android/gms/common/internal/SignInButtonConfig;)Lzv;

    move-result-object p0

    .line 6
    invoke-static {p0}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Lbw$a;

    const/16 v1, 0x40

    const-string v2, "Could not get button with size "

    const-string v3, " and color "

    invoke-static {v1, v2, p1, v3, p2}, Lic;->c(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lbw$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/common/internal/l;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/common/internal/l;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/u;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/u;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
