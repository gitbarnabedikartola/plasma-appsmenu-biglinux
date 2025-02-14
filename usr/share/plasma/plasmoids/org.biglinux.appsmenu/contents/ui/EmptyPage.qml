/* SPDX-FileCopyrightText: 2021 Noah Davis <noahadvs@gmail.com>
 * SPDX-License-Identifier: LGPL-2.0-or-later
 */

import QtQuick 2.15
import QtQuick.Templates 2.15 as T

/**
 * This is meant to be a very basic page that behaves like most pages do,
 * but inherits no externally defined content or behavior.
 */
T.Page {
    id: root
    // using a custom implementation that only checks if defined.
    property real implicitHeaderWidth2: header ? header.implicitWidth : 0
    property real implicitHeaderHeight2: header ? header.implicitHeight : 0
    
    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            contentWidth + leftPadding + rightPadding,
                            implicitHeaderWidth2)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             contentHeight + topPadding + bottomPadding
                             + (implicitHeaderHeight2 > 0 ? implicitHeaderHeight2 + spacing : 0))

    Accessible.ignored: true
}
