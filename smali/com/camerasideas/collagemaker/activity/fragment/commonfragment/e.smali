.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;

.field public final synthetic c:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/e;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/e;->c:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/e;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/e;->c:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;->B1(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    return-void
.end method
