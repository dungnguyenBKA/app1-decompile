.class Lsy$b;
.super Lsy$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final b:Lsy$d;


# direct methods
.method public constructor <init>(Lsy$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsy$g;-><init>()V

    .line 2
    iput-object p1, p0, Lsy$b;->b:Lsy$d;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Ley;ILandroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lsy$b;->b:Lsy$d;

    .line 2
    iget v6, v0, Lsy$d;->f:F

    .line 3
    iget v7, v0, Lsy$d;->g:F

    .line 4
    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Lsy$b;->b:Lsy$d;

    .line 5
    iget v1, v0, Lsy$d;->b:F

    .line 6
    iget v2, v0, Lsy$d;->c:F

    .line 7
    iget v3, v0, Lsy$d;->d:F

    .line 8
    iget v0, v0, Lsy$d;->e:F

    .line 9
    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    .line 10
    invoke-virtual/range {v1 .. v7}, Ley;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
