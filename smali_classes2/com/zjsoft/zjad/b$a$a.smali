.class Lcom/zjsoft/zjad/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/zjad/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/zjsoft/zjad/b$a;


# direct methods
.method constructor <init>(Lcom/zjsoft/zjad/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/zjad/b$a$a;->b:Lcom/zjsoft/zjad/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zjsoft/zjad/b$a$a;->b:Lcom/zjsoft/zjad/b$a;

    iget-object v0, v0, Lcom/zjsoft/zjad/b$a;->d:Lcom/zjsoft/zjad/b;

    iget-object v1, v0, Lcom/zjsoft/zjad/b;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/zjsoft/zjad/b;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/zjad/b$a$a;->b:Lcom/zjsoft/zjad/b$a;

    iget-object v0, v0, Lcom/zjsoft/zjad/b$a;->d:Lcom/zjsoft/zjad/b;

    iget-object v1, v0, Lcom/zjsoft/zjad/b;->f:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/zjsoft/zjad/b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
