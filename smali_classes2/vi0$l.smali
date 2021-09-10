.class Lvi0$l;
.super Lqh0;
.source "SourceFile"

# interfaces
.implements Lzi0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final c:Lzi0;

.field final synthetic d:Lvi0;


# direct methods
.method constructor <init>(Lvi0;Lzi0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lvi0$l;->d:Lvi0;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lvi0;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lvi0$l;->c:Lzi0;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 1
    sget-object v0, Lqi0;->e:Lqi0;

    .line 2
    :try_start_0
    iget-object v1, p0, Lvi0$l;->c:Lzi0;

    invoke-virtual {v1, p0}, Lzi0;->L(Lzi0$b;)V

    .line 3
    :goto_0
    iget-object v1, p0, Lvi0$l;->c:Lzi0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lzi0;->o(ZLzi0$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lqi0;->c:Lqi0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object v0, Lqi0;->h:Lqi0;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v2, p0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v2, v1, v0}, Lvi0;->n0(Lqi0;Lqi0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-object v1, v0

    .line 7
    :catch_1
    :try_start_3
    sget-object v0, Lqi0;->d:Lqi0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8
    :try_start_4
    iget-object v1, p0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v1, v0, v0}, Lvi0;->n0(Lqi0;Lqi0;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 9
    :catch_2
    :goto_1
    iget-object v0, p0, Lvi0$l;->c:Lzi0;

    invoke-static {v0}, Lrh0;->g(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v2

    .line 10
    :goto_2
    :try_start_5
    iget-object v3, p0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v3, v1, v0}, Lvi0;->n0(Lqi0;Lqi0;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 11
    :catch_3
    iget-object v0, p0, Lvi0$l;->c:Lzi0;

    invoke-static {v0}, Lrh0;->g(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method
