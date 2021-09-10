.class Lml$b;
.super Lml$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lml;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lml$h<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lml;


# direct methods
.method constructor <init>(Lml;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lml$b;->c:Lml;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lml$h;-><init>(Lml$a;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lml$b;->c:Lml;

    invoke-static {v0}, Lml;->a(Lml;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v0, p0, Lml$b;->c:Lml;

    iget-object v1, p0, Lml$h;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lml;->f([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lml;->b(Lml;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
