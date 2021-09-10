.class Lvi0$g;
.super Lqh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi0;->w0(ILqi0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lqi0;

.field final synthetic e:Lvi0;


# direct methods
.method varargs constructor <init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;ILqi0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi0$g;->e:Lvi0;

    iput p4, p0, Lvi0$g;->c:I

    iput-object p5, p0, Lvi0$g;->d:Lqi0;

    invoke-direct {p0, p2, p3}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvi0$g;->e:Lvi0;

    iget-object v0, v0, Lvi0;->k:Ldj0;

    check-cast v0, Ldj0$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lvi0$g;->e:Lvi0;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lvi0$g;->e:Lvi0;

    iget-object v1, v1, Lvi0;->y:Ljava/util/Set;

    iget v2, p0, Lvi0$g;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
