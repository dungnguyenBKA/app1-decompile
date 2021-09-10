.class public Lcom/camerasideas/collagemaker/activity/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/d$a;
    }
.end annotation


# static fields
.field static final a:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2
    new-instance v0, Lx3;

    invoke-direct {v0}, Lx3;-><init>()V

    sput-object v0, Lcom/camerasideas/collagemaker/activity/widget/d;->a:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Lw3;

    invoke-direct {v0}, Lw3;-><init>()V

    .line 4
    new-instance v0, Ly3;

    invoke-direct {v0}, Ly3;-><init>()V

    .line 5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method
