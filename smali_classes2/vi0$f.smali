.class Lvi0$f;
.super Lqh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi0;->s0(ILzj0;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lxj0;

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Lvi0;


# direct methods
.method varargs constructor <init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;ILxj0;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi0$f;->g:Lvi0;

    iput p4, p0, Lvi0$f;->c:I

    iput-object p5, p0, Lvi0$f;->d:Lxj0;

    iput p6, p0, Lvi0$f;->e:I

    iput-boolean p7, p0, Lvi0$f;->f:Z

    invoke-direct {p0, p2, p3}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lvi0$f;->g:Lvi0;

    iget-object v0, v0, Lvi0;->k:Ldj0;

    iget-object v1, p0, Lvi0$f;->d:Lxj0;

    iget v2, p0, Lvi0$f;->e:I

    check-cast v0, Ldj0$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v2, v2

    .line 3
    invoke-virtual {v1, v2, v3}, Lxj0;->skip(J)V

    .line 4
    iget-object v0, p0, Lvi0$f;->g:Lvi0;

    iget-object v0, v0, Lvi0;->w:Lbj0;

    iget v1, p0, Lvi0$f;->c:I

    sget-object v2, Lqi0;->h:Lqi0;

    invoke-virtual {v0, v1, v2}, Lbj0;->k0(ILqi0;)V

    .line 5
    iget-object v0, p0, Lvi0$f;->g:Lvi0;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lvi0$f;->g:Lvi0;

    iget-object v1, v1, Lvi0;->y:Ljava/util/Set;

    iget v2, p0, Lvi0$f;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
