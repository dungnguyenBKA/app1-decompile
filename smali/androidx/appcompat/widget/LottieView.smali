.class public Landroidx/appcompat/widget/LottieView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LottieView$b;
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public b:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LottieView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LottieView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0026

    .line 1
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f080060

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Landroidx/appcompat/widget/LottieView;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 3
    new-instance v0, Landroidx/appcompat/widget/LottieView$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/LottieView$b;-><init>(Landroidx/appcompat/widget/LottieView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->n(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    new-instance v0, Landroidx/appcompat/widget/LottieView$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/LottieView$a;-><init>(Landroidx/appcompat/widget/LottieView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->o(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
