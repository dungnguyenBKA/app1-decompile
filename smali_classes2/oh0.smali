.class public final enum Loh0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Loh0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Loh0;

.field public static final enum d:Loh0;

.field public static final enum e:Loh0;

.field public static final enum f:Loh0;

.field public static final enum g:Loh0;

.field private static final synthetic h:[Loh0;


# instance fields
.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Loh0;

    const-string v1, "TLS_1_3"

    const/4 v2, 0x0

    const-string v3, "TLSv1.3"

    invoke-direct {v0, v1, v2, v3}, Loh0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Loh0;->c:Loh0;

    .line 2
    new-instance v1, Loh0;

    const-string v3, "TLS_1_2"

    const/4 v4, 0x1

    const-string v5, "TLSv1.2"

    invoke-direct {v1, v3, v4, v5}, Loh0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Loh0;->d:Loh0;

    .line 3
    new-instance v3, Loh0;

    const-string v5, "TLS_1_1"

    const/4 v6, 0x2

    const-string v7, "TLSv1.1"

    invoke-direct {v3, v5, v6, v7}, Loh0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Loh0;->e:Loh0;

    .line 4
    new-instance v5, Loh0;

    const-string v7, "TLS_1_0"

    const/4 v8, 0x3

    const-string v9, "TLSv1"

    invoke-direct {v5, v7, v8, v9}, Loh0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Loh0;->f:Loh0;

    .line 5
    new-instance v7, Loh0;

    const-string v9, "SSL_3_0"

    const/4 v10, 0x4

    const-string v11, "SSLv3"

    invoke-direct {v7, v9, v10, v11}, Loh0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Loh0;->g:Loh0;

    const/4 v9, 0x5

    new-array v9, v9, [Loh0;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Loh0;->h:[Loh0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Loh0;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Loh0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "TLSv1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "SSLv3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "TLSv1.3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "TLSv1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "TLSv1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected TLS version: "

    invoke-static {v1, p0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    sget-object p0, Loh0;->f:Loh0;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Loh0;->g:Loh0;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Loh0;->c:Loh0;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Loh0;->d:Loh0;

    return-object p0

    .line 7
    :pswitch_4
    sget-object p0, Loh0;->e:Loh0;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_4
        -0x1dfc3f26 -> :sswitch_3
        -0x1dfc3f25 -> :sswitch_2
        0x4b88569 -> :sswitch_1
        0x4c38896 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Loh0;
    .locals 1

    .line 1
    const-class v0, Loh0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Loh0;

    return-object p0
.end method

.method public static values()[Loh0;
    .locals 1

    .line 1
    sget-object v0, Loh0;->h:[Loh0;

    invoke-virtual {v0}, [Loh0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Loh0;

    return-object v0
.end method
