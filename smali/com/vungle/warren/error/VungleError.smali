.class public Lcom/vungle/warren/error/VungleError;
.super Ljava/lang/Error;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CONFIG_FAILED:I = 0x7

.field public static final ID_NOT_FOUND:I = 0x2

.field public static final INDEX_HTML_MISSING:I = 0x5

.field public static final INVALID_URL:I = 0xa

.field public static final MALFORMED_AD_RESPONSE:I = 0x9

.field public static final MRAID_FILE_MISSING:I = 0x4

.field public static final NO_AD_AVAILABLE:I = 0x0

.field static final SLEEP:I = 0x1

.field static final UNKNOWN_ERROR:I = 0x3

.field public static final WILL_PLAY_AD_DISABLED:I = 0x6


# instance fields
.field private code:I
    .annotation build Lcom/vungle/warren/error/VungleError$ErrorCode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleError$ErrorCode;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 2
    iput p1, p0, Lcom/vungle/warren/error/VungleError;->code:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1
    .annotation build Lcom/vungle/warren/error/VungleError$ErrorCode;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/error/VungleError;->code:I

    return v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/vungle/warren/error/VungleError;->code:I

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error Code "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vungle/warren/error/VungleError;->code:I

    const-string v3, " is not recognized!"

    invoke-static {v1, v2, v3}, Lic;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "invalid url"

    return-object v0

    :pswitch_2
    const-string v0, "invalid ad response"

    return-object v0

    :pswitch_3
    const-string v0, "/config returned an error"

    return-object v0

    :pswitch_4
    const-string v0, "/config has disabled /will_play_ad"

    return-object v0

    :pswitch_5
    const-string v0, "index.html was not found. 404!"

    return-object v0

    :pswitch_6
    const-string v0, "mraid.js was not found. 404!"

    return-object v0

    :pswitch_7
    const-string v0, "Unknown Error encountered."

    return-object v0

    :pswitch_8
    const-string v0, "No object for the given identifier was found"

    return-object v0

    :pswitch_9
    const-string v0, "Sleep Code Returned"

    return-object v0

    :pswitch_a
    const-string v0, "No Advertisement is currently available"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
