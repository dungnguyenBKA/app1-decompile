.class Lnl$b$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lnl$b;


# direct methods
.method constructor <init>(Lnl$b;Ljava/io/OutputStream;Lnl$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnl$b$a;->b:Lnl$b;

    .line 2
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lnl$b$a;->b:Lnl$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnl$b;->c(Lnl$b;Z)Z

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lnl$b$a;->b:Lnl$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnl$b;->c(Lnl$b;Z)Z

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object p1, p0, Lnl$b$a;->b:Lnl$b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnl$b;->c(Lnl$b;Z)Z

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object p1, p0, Lnl$b$a;->b:Lnl$b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lnl$b;->c(Lnl$b;Z)Z

    :goto_0
    return-void
.end method
