.class Landroidx/swiperefreshlayout/widget/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/Paint;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:[I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:Z

.field o:Landroid/graphics/Path;

.field p:F

.field q:F

.field r:I

.field s:I

.field t:I

.field u:I


# direct methods
.method constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/d$a;->a:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/d$a;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/d$a;->c:Landroid/graphics/Paint;

    .line 5
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/d$a;->d:Landroid/graphics/Paint;

    const/4 v3, 0x0

    .line 6
    iput v3, p0, Landroidx/swiperefreshlayout/widget/d$a;->e:F

    .line 7
    iput v3, p0, Landroidx/swiperefreshlayout/widget/d$a;->f:F

    .line 8
    iput v3, p0, Landroidx/swiperefreshlayout/widget/d$a;->g:F

    const/high16 v3, 0x40a00000    # 5.0f

    .line 9
    iput v3, p0, Landroidx/swiperefreshlayout/widget/d$a;->h:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    iput v3, p0, Landroidx/swiperefreshlayout/widget/d$a;->p:F

    const/16 v3, 0xff

    .line 11
    iput v3, p0, Landroidx/swiperefreshlayout/widget/d$a;->t:I

    .line 12
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/swiperefreshlayout/widget/d$a;->j:I

    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/d$a;->i:[I

    aget p1, v0, p1

    iput p1, p0, Landroidx/swiperefreshlayout/widget/d$a;->u:I

    return-void
.end method

.method b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/d$a;->n:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/d$a;->n:Z

    :cond_0
    return-void
.end method
