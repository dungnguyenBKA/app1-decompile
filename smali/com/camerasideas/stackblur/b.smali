.class public Lcom/camerasideas/stackblur/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/stackblur/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/stackblur/b;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/stackblur/b;->b:Landroid/renderscript/RenderScript;

    .line 4
    new-instance v0, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {v0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {p1, v0}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/stackblur/b;->b:Landroid/renderscript/RenderScript;

    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/camerasideas/stackblur/b;->b:Landroid/renderscript/RenderScript;

    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/camerasideas/stackblur/b;->b:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 5
    invoke-virtual {v3, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 6
    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 7
    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 8
    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 9
    iget-object p2, p0, Lcom/camerasideas/stackblur/b;->b:Landroid/renderscript/RenderScript;

    invoke-virtual {p2}, Landroid/renderscript/RenderScript;->destroy()V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method
