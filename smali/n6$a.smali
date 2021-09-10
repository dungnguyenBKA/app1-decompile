.class Ln6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ln6;


# direct methods
.method constructor <init>(Ln6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln6$a;->b:Ln6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln6$a;->b:Ln6;

    invoke-virtual {v0, p1}, Ln6;->d(Ljava/lang/Runnable;)V

    return-void
.end method
