.class final synthetic Lcom/google/firebase/remoteconfig/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljw;


# static fields
.field private static final a:Lcom/google/firebase/remoteconfig/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/d;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/d;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/d;->a:Lcom/google/firebase/remoteconfig/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ljw;
    .locals 1

    sget-object v0, Lcom/google/firebase/remoteconfig/d;->a:Lcom/google/firebase/remoteconfig/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lkw;
    .locals 0

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/k$a;

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p1

    return-object p1
.end method
