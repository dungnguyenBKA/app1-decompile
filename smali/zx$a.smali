.class Lzx$a;
.super Lj1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzx;->f(Landroid/content/Context;Lby;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lby;

.field final synthetic b:Lzx;


# direct methods
.method constructor <init>(Lzx;Lby;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzx$a;->b:Lzx;

    iput-object p2, p0, Lzx$a;->a:Lby;

    invoke-direct {p0}, Lj1;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzx$a;->b:Lzx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzx;->c(Lzx;Z)Z

    .line 2
    iget-object v0, p0, Lzx$a;->a:Lby;

    invoke-virtual {v0, p1}, Lby;->a(I)V

    return-void
.end method

.method public d(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzx$a;->b:Lzx;

    iget v1, v0, Lzx;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Lzx;->b(Lzx;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object p1, p0, Lzx$a;->b:Lzx;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lzx;->c(Lzx;Z)Z

    .line 3
    iget-object p1, p0, Lzx$a;->a:Lby;

    iget-object v0, p0, Lzx$a;->b:Lzx;

    invoke-static {v0}, Lzx;->a(Lzx;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lby;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
