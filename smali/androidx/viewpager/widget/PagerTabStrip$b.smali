.class Landroidx/viewpager/widget/PagerTabStrip$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/viewpager/widget/PagerTabStrip;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/PagerTabStrip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip$b;->b:Landroidx/viewpager/widget/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip$b;->b:Landroidx/viewpager/widget/PagerTabStrip;

    iget-object p1, p1, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroidx/viewpager/widget/ViewPager;

    .line 2
    iget v0, p1, Landroidx/viewpager/widget/ViewPager;->e:I

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->x(I)V

    return-void
.end method
