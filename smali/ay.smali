.class Lay;
.super Lby;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Lby;

.field final synthetic c:Lzx;


# direct methods
.method constructor <init>(Lzx;Landroid/text/TextPaint;Lby;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lay;->c:Lzx;

    iput-object p2, p0, Lay;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lay;->b:Lby;

    invoke-direct {p0}, Lby;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lay;->b:Lby;

    invoke-virtual {v0, p1}, Lby;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lay;->c:Lzx;

    iget-object v1, p0, Lay;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lzx;->i(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lay;->b:Lby;

    invoke-virtual {v0, p1, p2}, Lby;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
