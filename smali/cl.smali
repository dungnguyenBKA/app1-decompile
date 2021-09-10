.class public final Lcl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/Executor;

.field private static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcl$a;

    invoke-direct {v0}, Lcl$a;-><init>()V

    sput-object v0, Lcl;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lcl$b;

    invoke-direct {v0}, Lcl$b;-><init>()V

    sput-object v0, Lcl;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lcl;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lcl;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method
