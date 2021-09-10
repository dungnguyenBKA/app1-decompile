.class Lcom/google/android/material/tabs/TabLayout$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$c;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/google/android/material/tabs/TabLayout$c;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout$c;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$c$a;->e:Lcom/google/android/material/tabs/TabLayout$c;

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$c$a;->a:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout$c$a;->b:I

    iput p4, p0, Lcom/google/android/material/tabs/TabLayout$c$a;->c:I

    iput p5, p0, Lcom/google/android/material/tabs/TabLayout$c$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$c$a;->e:Lcom/google/android/material/tabs/TabLayout$c;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$c$a;->a:I

    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$c$a;->b:I

    .line 3
    sget-object v3, Ljx;->a:Landroid/animation/TimeInterpolator;

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float v2, v2, p1

    .line 4
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    .line 5
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$c$a;->c:I

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$c$a;->d:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    mul-float p1, p1, v3

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v1

    .line 7
    invoke-virtual {v0, v2, p1}, Lcom/google/android/material/tabs/TabLayout$c;->c(II)V

    return-void
.end method
