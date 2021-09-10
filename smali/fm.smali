.class Lfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lem;


# direct methods
.method constructor <init>(Lem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm;->b:Lem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lfm;->b:Lem;

    invoke-static {v0}, Lem;->a(Lem;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 2
    iget-object v0, p0, Lfm;->b:Lem;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lfm;->b:Lem;

    .line 3
    invoke-static {v2}, Lem;->c(Lem;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 4
    invoke-static {v0, v1}, Lem;->b(Lem;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lfm;->b:Lem;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lem;->d(Lem;Ljava/io/File;)Ljava/io/File;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
