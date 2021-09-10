.class Lcom/camerasideas/collagemaker/activity/widget/o$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/widget/o;->a(Lcom/camerasideas/collagemaker/activity/widget/n$f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/widget/n$f$a;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/o;Lcom/camerasideas/collagemaker/activity/widget/n$f$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/o$b;->a:Lcom/camerasideas/collagemaker/activity/widget/n$f$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/o$b;->a:Lcom/camerasideas/collagemaker/activity/widget/n$f$a;

    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/n$b;

    .line 2
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/widget/n$b;->a:Lcom/camerasideas/collagemaker/activity/widget/n$c;

    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/n$d;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/o$b;->a:Lcom/camerasideas/collagemaker/activity/widget/n$f$a;

    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/n$b;

    .line 2
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/widget/n$b;->a:Lcom/camerasideas/collagemaker/activity/widget/n$c;

    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c$a;

    .line 3
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c$a;->b:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    iget p1, p1, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c$a;->a:I

    iput p1, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->e:I

    const/4 p1, 0x0

    .line 4
    iput p1, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->f:F

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/o$b;->a:Lcom/camerasideas/collagemaker/activity/widget/n$f$a;

    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/n$b;

    .line 2
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/widget/n$b;->a:Lcom/camerasideas/collagemaker/activity/widget/n$c;

    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/n$d;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
