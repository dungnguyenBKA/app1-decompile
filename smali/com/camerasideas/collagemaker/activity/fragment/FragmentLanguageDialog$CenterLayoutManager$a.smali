.class Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$CenterLayoutManager$a;
.super Landroidx/recyclerview/widget/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/FragmentLanguageDialog$CenterLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/q;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public m(IIIII)I
    .locals 0

    sub-int/2addr p4, p3

    .line 1
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    sub-int/2addr p4, p2

    return p4
.end method
