.class final synthetic Lf10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldw;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf10;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a(Ljava/util/concurrent/CountDownLatch;)Ldw;
    .locals 1

    new-instance v0, Lf10;

    invoke-direct {v0, p0}, Lf10;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method


# virtual methods
.method public then(Lkw;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lf10;->a:Ljava/util/concurrent/CountDownLatch;

    .line 1
    sget v0, Lh10;->b:I

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    return-object p1
.end method
