.class Lcom/zjsoft/zjad/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/zjad/c;->k(Landroid/app/Activity;Lcom/zjsoft/zjad/d;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/zjsoft/zjad/d;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/zjsoft/zjad/c;


# direct methods
.method constructor <init>(Lcom/zjsoft/zjad/c;Lcom/zjsoft/zjad/d;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/zjad/c$b;->d:Lcom/zjsoft/zjad/c;

    iput-object p2, p0, Lcom/zjsoft/zjad/c$b;->b:Lcom/zjsoft/zjad/d;

    iput-object p3, p0, Lcom/zjsoft/zjad/c$b;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/zjad/c$b;->d:Lcom/zjsoft/zjad/c;

    iget-object v0, v0, Lub0;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/zjsoft/zjad/c$b;->d:Lcom/zjsoft/zjad/c;

    iget-object v2, p0, Lcom/zjsoft/zjad/c$b;->b:Lcom/zjsoft/zjad/d;

    iget-object v2, v2, Lcom/zjsoft/zjad/d;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/zjsoft/zjad/c;->e:Landroid/graphics/Bitmap;

    .line 3
    iget-object v1, p0, Lcom/zjsoft/zjad/c$b;->d:Lcom/zjsoft/zjad/c;

    iget-object v1, v1, Lcom/zjsoft/zjad/c;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/zjsoft/zjad/c$b;->c:Landroid/app/Activity;

    new-instance v2, Lcom/zjsoft/zjad/c$b$a;

    invoke-direct {v2, p0}, Lcom/zjsoft/zjad/c$b$a;-><init>(Lcom/zjsoft/zjad/c$b;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
