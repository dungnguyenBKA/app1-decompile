.class Landroidx/viewpager/widget/PagerTitleStrip$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$g;
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private b:I

.field final synthetic c:Landroidx/viewpager/widget/PagerTitleStrip;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/PagerTitleStrip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->c:Landroidx/viewpager/widget/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 1

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p3, p2, p3

    if-lez p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 1
    :cond_0
    iget-object p3, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->c:Landroidx/viewpager/widget/PagerTitleStrip;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->g(IFZ)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->b:I

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 1
    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->b:I

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->c:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v0, p1, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroidx/viewpager/widget/ViewPager;

    .line 3
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->f(ILandroidx/viewpager/widget/a;)V

    .line 5
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->c:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v0, p1, Landroidx/viewpager/widget/PagerTitleStrip;->g:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p1, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroidx/viewpager/widget/ViewPager;

    .line 7
    iget v1, v1, Landroidx/viewpager/widget/ViewPager;->e:I

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p1, v1, v0, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->g(IFZ)V

    :cond_1
    return-void
.end method

.method public onChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->c:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroidx/viewpager/widget/ViewPager;

    .line 2
    iget v2, v1, Landroidx/viewpager/widget/ViewPager;->e:I

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->f(ILandroidx/viewpager/widget/a;)V

    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->c:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->g:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroidx/viewpager/widget/ViewPager;

    .line 6
    iget v2, v2, Landroidx/viewpager/widget/ViewPager;->e:I

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v0, v2, v1, v3}, Landroidx/viewpager/widget/PagerTitleStrip;->g(IFZ)V

    return-void
.end method
