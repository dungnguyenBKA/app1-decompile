.class Lml$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lml$f;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lml$f;


# direct methods
.method constructor <init>(Lml$f;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lml$f$a;->c:Lml$f;

    iput-object p2, p0, Lml$f$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lml$f$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lml$f$a;->c:Lml$f;

    invoke-virtual {v0}, Lml$f;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lml$f$a;->c:Lml$f;

    invoke-virtual {v1}, Lml$f;->a()V

    .line 3
    throw v0
.end method
