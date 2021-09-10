.class Lvi0$e;
.super Lqh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi0;->u0(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Z

.field final synthetic f:Lvi0;


# direct methods
.method varargs constructor <init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi0$e;->f:Lvi0;

    iput p4, p0, Lvi0$e;->c:I

    iput-object p5, p0, Lvi0$e;->d:Ljava/util/List;

    iput-boolean p6, p0, Lvi0$e;->e:Z

    invoke-direct {p0, p2, p3}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvi0$e;->f:Lvi0;

    iget-object v0, v0, Lvi0;->k:Ldj0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Lvi0$e;->f:Lvi0;

    iget-object v0, v0, Lvi0;->w:Lbj0;

    iget v1, p0, Lvi0$e;->c:I

    sget-object v2, Lqi0;->h:Lqi0;

    invoke-virtual {v0, v1, v2}, Lbj0;->k0(ILqi0;)V

    .line 3
    iget-object v0, p0, Lvi0$e;->f:Lvi0;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lvi0$e;->f:Lvi0;

    iget-object v1, v1, Lvi0;->y:Ljava/util/Set;

    iget v2, p0, Lvi0$e;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
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
