/***********************************************************************
 * FXRuby -- the Ruby language bindings for the FOX GUI toolkit.
 * Copyright (c) 2001-2009 by Lyle Johnson. All Rights Reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * For further information please contact the author by e-mail
 * at "lyle@lylejohnson.name".
 ***********************************************************************/


/**
* The menu separator is a simple decorative groove used to delineate items in a 
* popup menu.  When a target/message is given, the menu separator is usually 
* connected to an instance of the recent files class using the ID_ANYFILES
* message.  This automatically hides the menu separator when no files are listed
* in the recent files section.  Another possible target is the MDI client using
* the ID_MDI_ANY message: in this case, the menu separator will be automatically
* hidden when no MDI child windows are present.
*/
class FXMenuSeparator : public FXWindow {
protected:
  FXColor hiliteColor;
  FXColor shadowColor;
protected:
  FXMenuSeparator();
public:
  long onPaint(FXObject*,FXSelector,void* PTR_EVENT);
public:
  %extend {
    /// Construct a menu separator
    FXMenuSeparator(FXComposite* p,FXObject* tgt=NULL,FXSelector sel=0,FXuint opts=0){
      return new FXRbMenuSeparator(p,tgt,sel,opts);
      }
    }

  /// Change highlight color
  void setHiliteColor(FXColor clr);

  /// Get highlight color
  FXColor getHiliteColor() const;

  /// Change shadow color
  void setShadowColor(FXColor clr);

  /// Get shadow color
  FXColor getShadowColor() const;
  
  // Destructor
  virtual ~FXMenuSeparator();
  };


DECLARE_FXOBJECT_VIRTUALS(FXMenuSeparator)
DECLARE_FXID_VIRTUALS(FXMenuSeparator)
DECLARE_FXDRAWABLE_VIRTUALS(FXMenuSeparator)
DECLARE_FXWINDOW_VIRTUALS(FXMenuSeparator)

