.class public Lcom/camerasideas/baseutils/widget/DragFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# instance fields
.field private b:Lu3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/camerasideas/baseutils/widget/b;

    invoke-direct {p1, p0}, Lcom/camerasideas/baseutils/widget/b;-><init>(Lcom/camerasideas/baseutils/widget/DragFrameLayout;)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p2, p1}, Lu3;->l(Landroid/view/ViewGroup;FLu3$c;)Lu3;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/baseutils/widget/DragFrameLayout;->b:Lu3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/camerasideas/baseutils/widget/b;

    invoke-direct {p1, p0}, Lcom/camerasideas/baseutils/widget/b;-><init>(Lcom/camerasideas/baseutils/widget/DragFrameLayout;)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p2, p1}, Lu3;->l(Landroid/view/ViewGroup;FLu3$c;)Lu3;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/baseutils/widget/DragFrameLayout;->b:Lu3;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
