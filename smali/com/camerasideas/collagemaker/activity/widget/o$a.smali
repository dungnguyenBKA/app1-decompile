.class Lcom/camerasideas/collagemaker/activity/widget/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/widget/o;->b(Lcom/camerasideas/collagemaker/activity/widget/n$f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/widget/n$f$b;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/o;Lcom/camerasideas/collagemaker/activity/widget/n$f$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/o$a;->a:Lcom/camerasideas/collagemaker/activity/widget/n$f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/o$a;->a:Lcom/camerasideas/collagemaker/activity/widget/n$f$b;

    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/n$a;

    .line 2
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/widget/n$a;->a:Lcom/camerasideas/collagemaker/activity/widget/n$e;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/widget/n$a;->b:Lcom/camerasideas/collagemaker/activity/widget/n;

    invoke-interface {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/n$e;->a(Lcom/camerasideas/collagemaker/activity/widget/n;)V

    return-void
.end method
