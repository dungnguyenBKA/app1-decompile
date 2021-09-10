.class public abstract Lpm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpm$b;,
        Lpm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Lpm$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpm$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lpm$a;

.field private g:I

.field protected h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpm$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpm$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 2
    iput v0, p0, Lpm;->b:I

    const v0, 0xea60

    .line 3
    iput v0, p0, Lpm;->c:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lpm;->g:I

    .line 5
    iput-object p1, p0, Lpm;->j:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lpm;->d:Lpm$b;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lpm;->e:Ljava/lang/String;

    .line 8
    sget-object p1, Lpm$a;->b:Lpm$a;

    iput-object p1, p0, Lpm;->f:Lpm$a;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lpm;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lpm;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b()V
.end method

.method protected abstract c(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")TT;"
        }
    .end annotation
.end method

.method public run()V
    .locals 8

    const/16 v0, 0x13

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    iget-object v0, p0, Lpm;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lpm;->d:Lpm$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {p0}, Lpm;->a()V

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lpm;->j:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    iget v4, p0, Lpm;->b:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 7
    iget v4, p0, Lpm;->c:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 8
    iget-object v4, p0, Lpm;->f:Lpm$a;

    invoke-virtual {v4}, Lpm$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 10
    iget v4, p0, Lpm;->g:I

    if-eq v4, v0, :cond_1

    .line 11
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 12
    :cond_1
    sget-object v4, Lpm$a;->c:Lpm$a;

    iget-object v5, p0, Lpm;->f:Lpm$a;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 14
    :cond_2
    iget-object v4, p0, Lpm;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_9

    .line 15
    :cond_3
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v2

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    .line 17
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-nez v4, :cond_4

    .line 18
    invoke-virtual {p0}, Lpm;->b()V

    .line 19
    :cond_4
    iget-object v5, p0, Lpm;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_9

    :cond_5
    if-eqz v3, :cond_9

    .line 20
    iget-object v5, p0, Lpm;->e:Ljava/lang/String;

    if-nez v5, :cond_6

    goto :goto_6

    .line 21
    :cond_6
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :try_start_3
    iget-object v6, p0, Lpm;->e:Ljava/lang/String;

    if-eqz v6, :cond_7

    const-string v7, "utf-8"

    .line 23
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    if-eqz v5, :cond_9

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v5

    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v5, v2

    .line 24
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_9

    .line 25
    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v5

    .line 26
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :goto_4
    if-eqz v2, :cond_8

    .line 27
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 28
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 29
    :cond_8
    :goto_5
    throw v0

    :cond_9
    :goto_6
    if-nez v4, :cond_c

    if-eqz v3, :cond_c

    .line 30
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception v4

    .line 31
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_c

    .line 32
    iget-object v5, p0, Lpm;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_9

    .line 33
    :cond_a
    :try_start_8
    invoke-virtual {p0, v3}, Lpm;->c(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    :goto_8
    if-nez v4, :cond_c

    .line 35
    iget-object v0, p0, Lpm;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_9

    .line 36
    :cond_b
    iget-object v0, p0, Lpm;->d:Lpm$b;

    if-eqz v0, :cond_f

    .line 37
    invoke-interface {v0, v2}, Lpm$b;->b(Ljava/lang/Object;)V

    goto :goto_9

    .line 38
    :cond_c
    iget-object v2, p0, Lpm;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_9

    .line 39
    :cond_d
    iget-object v2, p0, Lpm;->d:Lpm$b;

    if-eqz v2, :cond_f

    if-nez v4, :cond_e

    .line 40
    new-instance v4, Ljava/lang/Exception;

    const-string v3, "server response code:"

    invoke-static {v3, v0}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    :cond_e
    invoke-interface {v2, v0, v4}, Lpm$b;->c(ILjava/lang/Exception;)V

    .line 42
    :cond_f
    :goto_9
    iget-object v0, p0, Lpm;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
