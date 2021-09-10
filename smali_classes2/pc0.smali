.class public Lpc0;
.super Lmc0;
.source "SourceFile"


# static fields
.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lpc0;->c:[I

    return-void

    :array_0
    .array-data 4
        0x7f0701bb
        0x7f0701bc
        0x7f0701bd
        0x7f0701be
        0x7f0701bf
        0x7f0701c0
        0x7f0701c1
        0x7f0701c2
        0x7f0701c3
        0x7f0701c4
        0x7f0701c5
        0x7f0701c6
        0x7f0701c7
        0x7f0701c8
        0x7f0701c9
        0x7f0701ca
        0x7f0701cb
        0x7f0701cc
        0x7f0701cd
        0x7f0701ce
        0x7f0701cf
        0x7f0701d0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lpc0;->c:[I

    invoke-direct {p0, p1, v0}, Lmc0;-><init>(Landroid/content/Context;[I)V

    return-void
.end method
