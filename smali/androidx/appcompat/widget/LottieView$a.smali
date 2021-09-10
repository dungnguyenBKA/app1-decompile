.class Landroidx/appcompat/widget/LottieView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/LottieView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/LottieView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/LottieView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/LottieView$a;->a:Landroidx/appcompat/widget/LottieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/LottieView$a;->a:Landroidx/appcompat/widget/LottieView;

    .line 2
    sget v0, Landroidx/appcompat/widget/LottieView;->c:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
