.class final Ljf0$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljf0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final b:Ljf0$b;

.field final synthetic c:Ljf0$c;


# direct methods
.method constructor <init>(Ljf0$c;Ljf0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljf0$c$a;->c:Ljf0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ljf0$c$a;->b:Ljf0$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljf0$c$a;->b:Ljf0$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljf0$b;->e:Z

    .line 2
    iget-object v0, p0, Ljf0$c$a;->c:Ljf0$c;

    iget-object v0, v0, Ljf0$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Ljf0$c$a;->b:Ljf0$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
