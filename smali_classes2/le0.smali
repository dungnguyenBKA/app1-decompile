.class public final enum Lle0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lbe0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lle0;",
        ">;",
        "Lbe0;"
    }
.end annotation


# static fields
.field public static final enum b:Lle0;

.field private static final synthetic c:[Lle0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lle0;

    const-string v1, "DISPOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lle0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lle0;->b:Lle0;

    const/4 v1, 0x1

    new-array v1, v1, [Lle0;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lle0;->c:[Lle0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lbe0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe0;

    .line 2
    sget-object v1, Lle0;->b:Lle0;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbe0;

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lbe0;->e()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/concurrent/atomic/AtomicReference;Lbe0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lbe0;",
            ">;",
            "Lbe0;",
            ")Z"
        }
    .end annotation

    const-string v0, "d is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Lbe0;->e()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lle0;->b:Lle0;

    if-eq p0, p1, :cond_0

    .line 5
    new-instance p0, Lge0;

    const-string p1, "Disposable already set!"

    invoke-direct {p0, p1}, Lge0;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lmf0;->f(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lle0;
    .locals 1

    .line 1
    const-class v0, Lle0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lle0;

    return-object p0
.end method

.method public static values()[Lle0;
    .locals 1

    .line 1
    sget-object v0, Lle0;->c:[Lle0;

    invoke-virtual {v0}, [Lle0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lle0;

    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 0

    return-void
.end method
