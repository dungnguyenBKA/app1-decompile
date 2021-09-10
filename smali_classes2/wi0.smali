.class Lwi0;
.super Lqh0;
.source "SourceFile"


# instance fields
.field final synthetic c:Laj0;

.field final synthetic d:Lvi0$l;


# direct methods
.method varargs constructor <init>(Lvi0$l;Ljava/lang/String;[Ljava/lang/Object;Laj0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwi0;->d:Lvi0$l;

    iput-object p4, p0, Lwi0;->c:Laj0;

    invoke-direct {p0, p2, p3}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lwi0;->d:Lvi0$l;

    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    iget-object v0, v0, Lvi0;->c:Lvi0$j;

    iget-object v1, p0, Lwi0;->c:Laj0;

    invoke-virtual {v0, v1}, Lvi0$j;->b(Laj0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "Http2Connection.Listener failure for "

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lwi0;->d:Lvi0$l;

    iget-object v4, v4, Lvi0$l;->d:Lvi0;

    iget-object v4, v4, Lvi0;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lmj0;->n(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :try_start_1
    iget-object v0, p0, Lwi0;->c:Laj0;

    sget-object v1, Lqi0;->d:Lqi0;

    invoke-virtual {v0, v1}, Laj0;->d(Lqi0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
