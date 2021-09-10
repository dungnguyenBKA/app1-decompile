.class public Lcom/google/android/material/tabs/TabItem;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/CharSequence;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, Lcom/google/android/material/R$styleable;->G:[I

    .line 3
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/i0;->t(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/i0;

    move-result-object p1

    const/4 p2, 0x2

    .line 4
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/tabs/TabItem;->b:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabItem;->c:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/tabs/TabItem;->d:I

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/widget/i0;->v()V

    return-void
.end method
