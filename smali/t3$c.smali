.class Lt3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Z

.field private final e:Lt3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLt3$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lt3$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lt3$c;->b:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lt3$c;->c:Landroid/graphics/Rect;

    .line 4
    iput-boolean p1, p0, Lt3$c;->d:Z

    .line 5
    iput-object p2, p0, Lt3$c;->e:Lt3$a;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt3$c;->b:Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Lt3$c;->c:Landroid/graphics/Rect;

    .line 3
    iget-object v2, p0, Lt3$c;->e:Lt3$a;

    check-cast v2, Ls3$a;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    check-cast p1, Ln3;

    .line 6
    invoke-virtual {p1, v0}, Ln3;->i(Landroid/graphics/Rect;)V

    .line 7
    iget-object p1, p0, Lt3$c;->e:Lt3$a;

    check-cast p1, Ls3$a;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    check-cast p2, Ln3;

    .line 10
    invoke-virtual {p2, v1}, Ln3;->i(Landroid/graphics/Rect;)V

    .line 11
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, -0x1

    if-ge p1, p2, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le p1, p2, :cond_1

    return v3

    .line 12
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, p2, :cond_3

    .line 13
    iget-boolean p1, p0, Lt3$c;->d:Z

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    if-le p1, p2, :cond_5

    .line 14
    iget-boolean p1, p0, Lt3$c;->d:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 15
    :cond_5
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_6

    return v2

    :cond_6
    if-le p1, p2, :cond_7

    return v3

    .line 16
    :cond_7
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_9

    .line 17
    iget-boolean p1, p0, Lt3$c;->d:Z

    if-eqz p1, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2

    :cond_9
    if-le p1, p2, :cond_b

    .line 18
    iget-boolean p1, p0, Lt3$c;->d:Z

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
