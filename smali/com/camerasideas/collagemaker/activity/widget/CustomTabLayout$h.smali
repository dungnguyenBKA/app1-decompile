.class public Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private final a:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$h;->a:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public a(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$h;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->x(I)V

    return-void
.end method
