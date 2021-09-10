.class Lem$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lem;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lem;


# direct methods
.method constructor <init>(Lem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lem$b;->b:Lem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lem$b;->b:Lem;

    invoke-static {v0}, Lem;->a(Lem;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lem$b;->b:Lem;

    invoke-static {v0}, Lem;->a(Lem;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :goto_0
    iget-object v0, p0, Lem$b;->b:Lem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lem;->b(Lem;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;

    :cond_0
    return-void
.end method
