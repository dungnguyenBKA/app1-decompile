.class public final Lcom/facebook/ads/redexgen/X/7o;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jj;)V
    .locals 0

    .line 16819
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KU;)V
    .locals 4

    .line 16820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A08(Lcom/facebook/ads/redexgen/X/Jj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A09(Lcom/facebook/ads/redexgen/X/Jj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Jj;->A0C(Lcom/facebook/ads/redexgen/X/Jj;Z)Z

    .line 16822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A04:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0B(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/Pk;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    .line 16823
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0A(Lcom/facebook/ads/redexgen/X/Jj;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16824
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Jj;->A0D(Lcom/facebook/ads/redexgen/X/Jj;Z)Z

    .line 16825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A01(Lcom/facebook/ads/redexgen/X/Jj;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jx;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Jx;-><init>(Lcom/facebook/ads/redexgen/X/7o;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    .line 16826
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A00(Lcom/facebook/ads/redexgen/X/Jj;)I

    move-result v0

    int-to-long v0, v0

    .line 16827
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16828
    :cond_1
    :goto_0
    return-void

    .line 16829
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A03:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0B(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/Pk;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A05(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 16831
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    const/4 v0, 0x1

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A06(Lcom/facebook/ads/redexgen/X/Jj;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16832
    check-cast p1, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7o;->A00(Lcom/facebook/ads/redexgen/X/KU;)V

    return-void
.end method
