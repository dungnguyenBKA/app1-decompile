.class final synthetic Lx40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final b:Lx40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx40;

    invoke-direct {v0}, Lx40;-><init>()V

    sput-object v0, Lx40;->b:Lx40;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Lx40;->b:Lx40;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    sget v0, Ly40;->c:I

    .line 2
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "heartbeat-information-executor"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
