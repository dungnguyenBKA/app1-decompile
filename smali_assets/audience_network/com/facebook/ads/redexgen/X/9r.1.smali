.class public final Lcom/facebook/ads/redexgen/X/9r;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9o;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 0

    .line 20604
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KU;)V
    .locals 2

    .line 20605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A06(Lcom/facebook/ads/redexgen/X/9o;)V

    .line 20606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/9o;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9o;->A07:Lcom/facebook/ads/redexgen/X/RH;

    .line 20607
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A0Q()Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/9o;

    .line 20608
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OE;->AC5(Landroid/view/View;)V

    .line 20609
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 20610
    check-cast p1, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9r;->A00(Lcom/facebook/ads/redexgen/X/KU;)V

    return-void
.end method
