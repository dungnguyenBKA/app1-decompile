.class public final Lmw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmw$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmw$a;

    invoke-direct {v0}, Lmw$a;-><init>()V

    sput-object v0, Lmw;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lcx;

    invoke-direct {v0}, Lcx;-><init>()V

    sput-object v0, Lmw;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
