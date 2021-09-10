.class public final Lcf0;
.super Lxd0;
.source "SourceFile"


# static fields
.field private static final b:Lef0;


# instance fields
.field final a:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "rx2.newthread-priority"

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    new-instance v1, Lef0;

    const-string v2, "RxNewThreadScheduler"

    invoke-direct {v1, v2, v0}, Lef0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcf0;->b:Lef0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcf0;->b:Lef0;

    .line 2
    invoke-direct {p0}, Lxd0;-><init>()V

    .line 3
    iput-object v0, p0, Lcf0;->a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public a()Lxd0$b;
    .locals 2

    .line 1
    new-instance v0, Ldf0;

    iget-object v1, p0, Lcf0;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Ldf0;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
