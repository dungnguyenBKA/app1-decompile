.class public abstract Ltc0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Ltc0;->b(F)V

    .line 2
    invoke-virtual {p0, p1, p2}, Ltc0;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected abstract b(F)V
.end method

.method protected abstract c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method
